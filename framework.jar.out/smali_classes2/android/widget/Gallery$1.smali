.class Landroid/widget/Gallery$1;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Gallery;


# direct methods
.method constructor <init>(Landroid/widget/Gallery;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Gallery;

    .prologue
    .line 131
    iput-object p1, p0, Landroid/widget/Gallery$1;->this$0:Landroid/widget/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Landroid/widget/Gallery$1;->this$0:Landroid/widget/Gallery;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/Gallery;->-set2(Landroid/widget/Gallery;Z)Z

    .line 135
    iget-object v0, p0, Landroid/widget/Gallery$1;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v0}, Landroid/widget/Gallery;->selectionChanged()V

    .line 133
    return-void
.end method
