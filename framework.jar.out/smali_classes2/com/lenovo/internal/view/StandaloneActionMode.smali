.class public Lcom/lenovo/internal/view/StandaloneActionMode;
.super Llenovo/view/ActionMode;
.source "StandaloneActionMode.java"

# interfaces
.implements Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;


# instance fields
.field private mCallback:Llenovo/view/ActionMode$Callback;

.field private mContext:Landroid/content/Context;

.field private mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

.field private mCustomView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFinished:Z

.field private mFocusable:Z

.field private mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/internal/widget/ActionBarContextView;Llenovo/view/ActionMode$Callback;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/lenovo/internal/widget/ActionBarContextView;
    .param p3, "callback"    # Llenovo/view/ActionMode$Callback;
    .param p4, "isFocusable"    # Z

    .prologue
    .line 49
    invoke-direct {p0}, Llenovo/view/ActionMode;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/lenovo/internal/view/StandaloneActionMode;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/lenovo/internal/view/StandaloneActionMode;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    .line 53
    iput-object p3, p0, Lcom/lenovo/internal/view/StandaloneActionMode;->mCallback:Llenovo/view/ActionMode$Callback;

    .line 55
    new-instance v0, Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p1}, Lcom/lenovo/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Lcom/lenovo/internal/view/menu/MenuBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/internal/view/StandaloneActionMode;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 56
    iget-object v0, p0, Lcom/lenovo/internal/view/StandaloneActionMode;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->setCallback(Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;)V

    .line 57
    iput-boolean p4, p0, Lcom/lenovo/internal/view/StandaloneActionMode;->mFocusable:Z

    .line 50
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/lenovo/internal/view/StandaloneActionMode;->mFinished:Z

    if-eqz v0, :cond_0

    .line 105
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/internal/view/StandaloneActionMode;->mFinished:Z

    .line 108
    iget-object v0, p0, Lcom/lenovo/internal/view/StandaloneActionMode;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarContextView;->closeMode()V

    .line 109
    iget-object v0, p0, Lcom/lenovo/internal/view/StandaloneActionMode;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/lenovo/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 110
    iget-object v0, p0, Lcom/lenovo/internal/view/StandaloneActionMode;->mCallback:Llenovo/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Llenovo/view/ActionMode$Callback;->onDestroyActionMode(Llenovo/view/ActionMode;)V

    .line 103
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 130
    iget-object v1, p0, Lcom/lenovo/internal/view/StandaloneActionMode;->mCustomView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/view/StandaloneActionMode;->mCustomView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :cond_0
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lenovo/internal/view/StandaloneActionMode;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lcom/lenovo/internal/view/StandaloneActionMode;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/lenovo/internal/view/StandaloneActionMode;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/lenovo/internal/view/StandaloneActionMode;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/lenovo/internal/view/StandaloneActionMode;->mCallback:Llenovo/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/lenovo/internal/view/StandaloneActionMode;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Llenovo/view/ActionMode$Callback;->onPrepareActionMode(Llenovo/view/ActionMode;Landroid/view/Menu;)Z

    .line 98
    return-void
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/internal/view/StandaloneActionMode;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarContextView;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public isUiFocusable()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/lenovo/internal/view/StandaloneActionMode;->mFocusable:Z

    return v0
.end method

.method public onCloseMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 142
    return-void
.end method

.method public onCloseSubMenu(Lcom/lenovo/internal/view/menu/SubMenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 154
    return-void
.end method

.method public onMenuItemSelected(Lcom/lenovo/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/lenovo/internal/view/StandaloneActionMode;->mCallback:Llenovo/view/ActionMode$Callback;

    invoke-interface {v0, p0, p2}, Llenovo/view/ActionMode$Callback;->onActionItemClicked(Llenovo/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onMenuModeChange(Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 1
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/lenovo/internal/view/StandaloneActionMode;->invalidate()V

    .line 159
    iget-object v0, p0, Lcom/lenovo/internal/view/StandaloneActionMode;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Lcom/lenovo/internal/widget/ActionBarContextView;->showOverflowMenu()Z

    .line 157
    return-void
.end method

.method public onSubMenuSelected(Lcom/lenovo/internal/view/menu/SubMenuBuilder;)Z
    .locals 3
    .param p1, "subMenu"    # Lcom/lenovo/internal/view/menu/SubMenuBuilder;

    .prologue
    const/4 v2, 0x1

    .line 146
    invoke-virtual {p1}, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    return v2

    .line 150
    :cond_0
    new-instance v0, Lcom/lenovo/internal/view/menu/MenuPopupHelper;

    iget-object v1, p0, Lcom/lenovo/internal/view/StandaloneActionMode;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;)V

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuPopupHelper;->show()V

    .line 151
    return v2
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 93
    iget-object v1, p0, Lcom/lenovo/internal/view/StandaloneActionMode;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v1, p1}, Lcom/lenovo/internal/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 94
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :cond_0
    iput-object v0, p0, Lcom/lenovo/internal/view/StandaloneActionMode;->mCustomView:Ljava/lang/ref/WeakReference;

    .line 92
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lenovo/internal/view/StandaloneActionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/view/StandaloneActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/lenovo/internal/view/StandaloneActionMode;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lenovo/internal/view/StandaloneActionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lenovo/internal/view/StandaloneActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/lenovo/internal/view/StandaloneActionMode;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1
    .param p1, "titleOptional"    # Z

    .prologue
    .line 82
    invoke-super {p0, p1}, Llenovo/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 83
    iget-object v0, p0, Lcom/lenovo/internal/view/StandaloneActionMode;->mContextView:Lcom/lenovo/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/widget/ActionBarContextView;->setTitleOptional(Z)V

    .line 81
    return-void
.end method
