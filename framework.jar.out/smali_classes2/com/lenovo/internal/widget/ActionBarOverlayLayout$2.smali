.class Lcom/lenovo/internal/widget/ActionBarOverlayLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActionBarOverlayLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/internal/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;


# direct methods
.method constructor <init>(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$2;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$2;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->-set1(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 121
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$2;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->-set0(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;Z)Z

    .line 119
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$2;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->-set1(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 115
    iget-object v0, p0, Lcom/lenovo/internal/widget/ActionBarOverlayLayout$2;->this$0:Lcom/lenovo/internal/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lenovo/internal/widget/ActionBarOverlayLayout;->-set0(Lcom/lenovo/internal/widget/ActionBarOverlayLayout;Z)Z

    .line 113
    return-void
.end method
