.class Landroid/app/FragmentManagerImpl$4;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/FragmentManagerImpl;->popBackStack(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/FragmentManagerImpl;

.field final synthetic val$flags:I

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Landroid/app/FragmentManagerImpl;II)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/FragmentManagerImpl;
    .param p2, "val$id"    # I
    .param p3, "val$flags"    # I

    .prologue
    .line 607
    iput-object p1, p0, Landroid/app/FragmentManagerImpl$4;->this$0:Landroid/app/FragmentManagerImpl;

    iput p2, p0, Landroid/app/FragmentManagerImpl$4;->val$id:I

    iput p3, p0, Landroid/app/FragmentManagerImpl$4;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 609
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$4;->this$0:Landroid/app/FragmentManagerImpl;

    iget-object v1, p0, Landroid/app/FragmentManagerImpl$4;->this$0:Landroid/app/FragmentManagerImpl;

    iget-object v1, v1, Landroid/app/FragmentManagerImpl;->mHost:Landroid/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/app/FragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget v2, p0, Landroid/app/FragmentManagerImpl$4;->val$id:I

    iget v3, p0, Landroid/app/FragmentManagerImpl$4;->val$flags:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    .line 608
    return-void
.end method
