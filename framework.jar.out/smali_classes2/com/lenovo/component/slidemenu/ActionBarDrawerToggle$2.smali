.class Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$2;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->resetToggleIcon(Landroid/app/Activity;Landroid/widget/Toolbar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;


# direct methods
.method constructor <init>(Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;

    .prologue
    .line 683
    iput-object p1, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$2;->this$0:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 686
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$2;->this$0:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;

    invoke-static {v0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->-get0(Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 687
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$2;->this$0:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;

    invoke-static {v0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->-wrap0(Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;)V

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$2;->this$0:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;

    invoke-static {v0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->-get1(Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle$2;->this$0:Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;

    invoke-static {v0}, Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;->-get1(Lcom/lenovo/component/slidemenu/ActionBarDrawerToggle;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
