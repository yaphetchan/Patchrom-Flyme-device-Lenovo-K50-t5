.class Landroid/view/TextureView$1;
.super Ljava/lang/Object;
.source "TextureView.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/TextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/TextureView;


# direct methods
.method constructor <init>(Landroid/view/TextureView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/TextureView;

    .prologue
    .line 774
    iput-object p1, p0, Landroid/view/TextureView$1;->this$0:Landroid/view/TextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 777
    iget-object v0, p0, Landroid/view/TextureView$1;->this$0:Landroid/view/TextureView;

    invoke-static {v0}, Landroid/view/TextureView;->-wrap1(Landroid/view/TextureView;)V

    .line 778
    iget-object v0, p0, Landroid/view/TextureView$1;->this$0:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->invalidate()V

    .line 776
    return-void
.end method
