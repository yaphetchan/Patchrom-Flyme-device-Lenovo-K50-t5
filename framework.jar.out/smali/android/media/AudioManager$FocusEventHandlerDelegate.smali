.class Landroid/media/AudioManager$FocusEventHandlerDelegate;
.super Ljava/lang/Object;
.source "AudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FocusEventHandlerDelegate"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;)V
    .locals 2
    .param p1, "this$0"    # Landroid/media/AudioManager;

    .prologue
    const/4 v1, 0x0

    .line 2210
    iput-object p1, p0, Landroid/media/AudioManager$FocusEventHandlerDelegate;->this$0:Landroid/media/AudioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2212
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 2213
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 2216
    :cond_0
    if-eqz v0, :cond_1

    .line 2218
    new-instance v1, Landroid/media/AudioManager$FocusEventHandlerDelegate$1;

    invoke-direct {v1, p0, v0}, Landroid/media/AudioManager$FocusEventHandlerDelegate$1;-><init>(Landroid/media/AudioManager$FocusEventHandlerDelegate;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/AudioManager$FocusEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    .line 2210
    :goto_0
    return-void

    .line 2233
    :cond_1
    iput-object v1, p0, Landroid/media/AudioManager$FocusEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method


# virtual methods
.method getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 2238
    iget-object v0, p0, Landroid/media/AudioManager$FocusEventHandlerDelegate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method
