.class public Lcom/lenovo/internal/view/menu/MenuDialogHelper;
.super Ljava/lang/Object;
.source "MenuDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;

.field private mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

.field mPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

.field private mPresenterCallback:Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Lcom/lenovo/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 43
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 140
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 170
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/internal/view/menu/MenuItemImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 169
    return-void
.end method

.method public onCloseMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 153
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    if-ne p1, v0, :cond_1

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/MenuDialogHelper;->dismiss()V

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Z)V

    .line 152
    :cond_2
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    iget-object v1, p0, Lcom/lenovo/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/internal/view/menu/ListMenuPresenter;->onCloseMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;Z)V

    .line 147
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 96
    const/16 v3, 0x52

    if-eq p2, v3, :cond_0

    const/4 v3, 0x4

    if-ne p2, v3, :cond_2

    .line 97
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    .line 98
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 99
    iget-object v3, p0, Lcom/lenovo/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 100
    .local v2, "win":Landroid/view/Window;
    if-eqz v2, :cond_2

    .line 101
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 104
    .local v1, "ds":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    .line 105
    invoke-virtual {v1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 106
    return v4

    .line 110
    .end local v0    # "decor":Landroid/view/View;
    .end local v1    # "ds":Landroid/view/KeyEvent$DispatcherState;
    .end local v2    # "win":Landroid/view/Window;
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v4, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 127
    :cond_2
    iget-object v3, p0, Lcom/lenovo/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v3, p2, p3, v5}, Lcom/lenovo/internal/view/menu/MenuBuilder;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v3

    return v3

    .line 111
    :cond_3
    iget-object v3, p0, Lcom/lenovo/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 112
    .restart local v2    # "win":Landroid/view/Window;
    if-eqz v2, :cond_2

    .line 113
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 114
    .restart local v0    # "decor":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 116
    .restart local v1    # "ds":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    invoke-virtual {v1, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 117
    iget-object v3, p0, Lcom/lenovo/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v3, v4}, Lcom/lenovo/internal/view/menu/MenuBuilder;->close(Z)V

    .line 118
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 119
    return v4
.end method

.method public onOpenSubMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/lenovo/internal/view/menu/MenuBuilder;)Z

    move-result v0

    return v0

    .line 166
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setPresenterCallback(Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/lenovo/internal/view/menu/MenuDialogHelper;->mPresenterCallback:Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;

    .line 131
    return-void
.end method

.method public show(Landroid/os/IBinder;)V
    .locals 7
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .prologue
    .line 54
    iget-object v3, p0, Lcom/lenovo/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 57
    .local v3, "menu":Lcom/lenovo/internal/view/menu/MenuBuilder;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {v3}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 61
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v4, Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    const v5, 0x9040022

    .line 62
    const v6, 0x90302e8

    .line 61
    invoke-direct {v4, v5, v6}, Lcom/lenovo/internal/view/menu/ListMenuPresenter;-><init>(II)V

    iput-object v4, p0, Lcom/lenovo/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    .line 64
    iget-object v4, p0, Lcom/lenovo/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v4, p0}, Lcom/lenovo/internal/view/menu/ListMenuPresenter;->setCallback(Lcom/lenovo/internal/view/menu/MenuPresenter$Callback;)V

    .line 65
    iget-object v4, p0, Lcom/lenovo/internal/view/menu/MenuDialogHelper;->mMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/lenovo/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v4, v5}, Lcom/lenovo/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/lenovo/internal/view/menu/MenuPresenter;)V

    .line 66
    iget-object v4, p0, Lcom/lenovo/internal/view/menu/MenuDialogHelper;->mPresenter:Lcom/lenovo/internal/view/menu/ListMenuPresenter;

    invoke-virtual {v4}, Lcom/lenovo/internal/view/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    invoke-virtual {v0, v4, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 69
    invoke-virtual {v3}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getHeaderView()Landroid/view/View;

    move-result-object v1

    .line 70
    .local v1, "headerView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 79
    :goto_0
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 82
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    .line 83
    iget-object v4, p0, Lcom/lenovo/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 85
    iget-object v4, p0, Lcom/lenovo/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 86
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x3eb

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 87
    if-eqz p1, :cond_0

    .line 88
    iput-object p1, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 90
    :cond_0
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x20000

    or-int/2addr v4, v5

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 92
    iget-object v4, p0, Lcom/lenovo/internal/view/menu/MenuDialogHelper;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 52
    return-void

    .line 75
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    invoke-virtual {v3}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getHeaderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method