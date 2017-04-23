.class public Lcom/lenovo/internal/view/menu/SubMenuBuilder;
.super Lcom/lenovo/internal/view/menu/MenuBuilder;
.source "SubMenuBuilder.java"

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private mItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

.field private mParentMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/internal/view/menu/MenuBuilder;Lcom/lenovo/internal/view/menu/MenuItemImpl;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentMenu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p3, "item"    # Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/lenovo/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 39
    iput-object p2, p0, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 40
    iput-object p3, p0, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->mItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .line 36
    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/lenovo/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "item"    # Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->collapseItemActionView(Lcom/lenovo/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    return v0
.end method

.method dispatchMenuItemSelected(Lcom/lenovo/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/lenovo/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/lenovo/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/internal/view/menu/MenuBuilder;->dispatchMenuItemSelected(Lcom/lenovo/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public expandItemActionView(Lcom/lenovo/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "item"    # Lcom/lenovo/internal/view/menu/MenuItemImpl;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->expandItemActionView(Lcom/lenovo/internal/view/menu/MenuItemImpl;)Z

    move-result v0

    return v0
.end method

.method public getActionViewStatesKey()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 134
    iget-object v1, p0, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->mItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->mItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    .line 135
    .local v0, "itemId":I
    :goto_0
    if-nez v0, :cond_1

    .line 136
    return-object v2

    .line 134
    .end local v0    # "itemId":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "itemId":I
    goto :goto_0

    .line 138
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->getActionViewStatesKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->mItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public getParentMenu()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getRootMenu()Lcom/lenovo/internal/view/menu/MenuBuilder;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public isQwertyMode()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->isQwertyMode()Z

    move-result v0

    return v0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->isShortcutsVisible()Z

    move-result v0

    return v0
.end method

.method public setCallback(Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->setCallback(Lcom/lenovo/internal/view/menu/MenuBuilder$Callback;)V

    .line 72
    return-void
.end method

.method public setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1
    .param p1, "iconRes"    # I

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 104
    return-object p0
.end method

.method public setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 99
    return-object p0
.end method

.method public setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1
    .param p1, "titleRes"    # I

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/lenovo/internal/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 114
    return-object p0
.end method

.method public setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 109
    return-object p0
.end method

.method public setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->setHeaderViewInt(Landroid/view/View;)Lcom/lenovo/internal/view/menu/MenuBuilder;

    .line 119
    return-object p0
.end method

.method public setIcon(I)Landroid/view/SubMenu;
    .locals 1
    .param p1, "iconRes"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->mItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->setIcon(I)Landroid/view/MenuItem;

    .line 94
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->mItem:Lcom/lenovo/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/view/menu/MenuItemImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 89
    return-object p0
.end method

.method public setQwertyMode(Z)V
    .locals 1
    .param p1, "isQwerty"    # Z

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->setQwertyMode(Z)V

    .line 44
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1
    .param p1, "shortcutsVisible"    # Z

    .prologue
    .line 55
    iget-object v0, p0, Lcom/lenovo/internal/view/menu/SubMenuBuilder;->mParentMenu:Lcom/lenovo/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lcom/lenovo/internal/view/menu/MenuBuilder;->setShortcutsVisible(Z)V

    .line 54
    return-void
.end method