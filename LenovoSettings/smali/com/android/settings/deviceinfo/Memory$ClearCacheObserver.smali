.class Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$ClearCacheObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClearCacheObserver"
.end annotation


# instance fields
.field private mRemaining:I

.field private final mTarget:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;


# direct methods
.method public constructor <init>(Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;I)V
    .locals 0
    .param p1, "target"    # Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;
    .param p2, "remaining"    # I

    .prologue
    .line 561
    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    .line 562
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$ClearCacheObserver;->mTarget:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    .line 563
    iput p2, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$ClearCacheObserver;->mRemaining:I

    .line 564
    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z

    .prologue
    .line 568
    monitor-enter p0

    .line 569
    :try_start_0
    iget v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$ClearCacheObserver;->mRemaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$ClearCacheObserver;->mRemaining:I

    if-nez v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory$ClearCacheObserver;->mTarget:Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;

    # invokes: Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->onCacheCleared()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;->access$700(Lcom/flyme/deviceoriginalsettings/deviceinfo/Memory;)V

    .line 572
    :cond_0
    monitor-exit p0

    .line 573
    return-void

    .line 572
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method