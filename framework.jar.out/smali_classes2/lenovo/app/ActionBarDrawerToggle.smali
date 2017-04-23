.class public Llenovo/app/ActionBarDrawerToggle;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Llenovo/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llenovo/app/ActionBarDrawerToggle$DelegateProvider;,
        Llenovo/app/ActionBarDrawerToggle$TmpDelegateProvider;,
        Llenovo/app/ActionBarDrawerToggle$Delegate;,
        Llenovo/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;,
        Llenovo/app/ActionBarDrawerToggle$DrawerToggle;,
        Llenovo/app/ActionBarDrawerToggle$HoneycombDelegate;,
        Llenovo/app/ActionBarDrawerToggle$JellybeanMr2Delegate;,
        Llenovo/app/ActionBarDrawerToggle$ToolbarCompatDelegate;,
        Llenovo/app/ActionBarDrawerToggle$DummyDelegate;
    }
.end annotation


# instance fields
.field private final mActivityImpl:Llenovo/app/ActionBarDrawerToggle$Delegate;

.field private final mCloseDrawerContentDescRes:I

.field private mDrawerIndicatorEnabled:Z

.field private final mDrawerLayout:Llenovo/widget/DrawerLayout;

.field private mHasCustomUpIndicator:Z

.field private mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

.field private final mOpenDrawerContentDescRes:I

.field private mSlider:Llenovo/app/ActionBarDrawerToggle$DrawerToggle;

.field private mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static synthetic -get0(Llenovo/app/ActionBarDrawerToggle;)Z
    .locals 1

    iget-boolean v0, p0, Llenovo/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    return v0
.end method

.method static synthetic -get1(Llenovo/app/ActionBarDrawerToggle;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Llenovo/app/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic -wrap0(Llenovo/app/ActionBarDrawerToggle;)V
    .locals 0

    invoke-direct {p0}, Llenovo/app/ActionBarDrawerToggle;->toggle()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Llenovo/widget/DrawerLayout;II)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "drawerLayout"    # Llenovo/widget/DrawerLayout;
    .param p3, "openDrawerContentDescRes"    # I
    .param p4, "closeDrawerContentDescRes"    # I

    .prologue
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move v5, p3

    move v6, p4

    .line 150
    invoke-direct/range {v0 .. v6}, Llenovo/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Llenovo/widget/Toolbar;Llenovo/widget/DrawerLayout;Landroid/graphics/drawable/Drawable;II)V

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Llenovo/widget/DrawerLayout;Llenovo/widget/Toolbar;II)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "drawerLayout"    # Llenovo/widget/DrawerLayout;
    .param p3, "toolbar"    # Llenovo/widget/Toolbar;
    .param p4, "openDrawerContentDescRes"    # I
    .param p5, "closeDrawerContentDescRes"    # I

    .prologue
    .line 181
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Llenovo/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Llenovo/widget/Toolbar;Llenovo/widget/DrawerLayout;Landroid/graphics/drawable/Drawable;II)V

    .line 180
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Llenovo/widget/Toolbar;Llenovo/widget/DrawerLayout;Landroid/graphics/drawable/Drawable;II)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "toolbar"    # Llenovo/widget/Toolbar;
    .param p3, "drawerLayout"    # Llenovo/widget/DrawerLayout;
    .param p5, "openDrawerContentDescRes"    # I
    .param p6, "closeDrawerContentDescRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/graphics/drawable/Drawable;",
            ":",
            "Llenovo/app/ActionBarDrawerToggle$DrawerToggle;",
            ">(",
            "Landroid/app/Activity;",
            "Llenovo/widget/Toolbar;",
            "Llenovo/widget/DrawerLayout;",
            "TT;II)V"
        }
    .end annotation

    .prologue
    .local p4, "slider":Landroid/graphics/drawable/Drawable;, "TT;"
    const/4 v2, 0x0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Llenovo/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    .line 194
    if-eqz p2, :cond_0

    .line 195
    new-instance v0, Llenovo/app/ActionBarDrawerToggle$ToolbarCompatDelegate;

    invoke-direct {v0, p2}, Llenovo/app/ActionBarDrawerToggle$ToolbarCompatDelegate;-><init>(Llenovo/widget/Toolbar;)V

    iput-object v0, p0, Llenovo/app/ActionBarDrawerToggle;->mActivityImpl:Llenovo/app/ActionBarDrawerToggle$Delegate;

    .line 196
    new-instance v0, Llenovo/app/ActionBarDrawerToggle$1;

    invoke-direct {v0, p0}, Llenovo/app/ActionBarDrawerToggle$1;-><init>(Llenovo/app/ActionBarDrawerToggle;)V

    invoke-virtual {p2, v0}, Llenovo/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    :goto_0
    iput-object p3, p0, Llenovo/app/ActionBarDrawerToggle;->mDrawerLayout:Llenovo/widget/DrawerLayout;

    .line 219
    iput p5, p0, Llenovo/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    .line 220
    iput p6, p0, Llenovo/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    .line 221
    if-nez p4, :cond_5

    .line 222
    new-instance v0, Llenovo/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;

    .line 223
    iget-object v1, p0, Llenovo/app/ActionBarDrawerToggle;->mActivityImpl:Llenovo/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v1}, Llenovo/app/ActionBarDrawerToggle$Delegate;->getActionBarThemedContext()Landroid/content/Context;

    move-result-object v1

    .line 222
    invoke-direct {v0, p1, v1}, Llenovo/app/ActionBarDrawerToggle$DrawerArrowDrawableToggle;-><init>(Landroid/app/Activity;Landroid/content/Context;)V

    iput-object v0, p0, Llenovo/app/ActionBarDrawerToggle;->mSlider:Llenovo/app/ActionBarDrawerToggle$DrawerToggle;

    .line 228
    :goto_1
    invoke-virtual {p0}, Llenovo/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Llenovo/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 193
    return-void

    .line 206
    :cond_0
    instance-of v0, p1, Llenovo/app/ActionBarDrawerToggle$DelegateProvider;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 207
    check-cast v0, Llenovo/app/ActionBarDrawerToggle$DelegateProvider;

    invoke-interface {v0}, Llenovo/app/ActionBarDrawerToggle$DelegateProvider;->getDrawerToggleDelegate()Llenovo/app/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    iput-object v0, p0, Llenovo/app/ActionBarDrawerToggle;->mActivityImpl:Llenovo/app/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    .line 208
    :cond_1
    instance-of v0, p1, Llenovo/app/ActionBarDrawerToggle$TmpDelegateProvider;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 209
    check-cast v0, Llenovo/app/ActionBarDrawerToggle$TmpDelegateProvider;

    invoke-interface {v0}, Llenovo/app/ActionBarDrawerToggle$TmpDelegateProvider;->getV7DrawerToggleDelegate()Llenovo/app/ActionBarDrawerToggle$Delegate;

    move-result-object v0

    iput-object v0, p0, Llenovo/app/ActionBarDrawerToggle;->mActivityImpl:Llenovo/app/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    .line 210
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_3

    .line 211
    new-instance v0, Llenovo/app/ActionBarDrawerToggle$JellybeanMr2Delegate;

    invoke-direct {v0, p1, v2}, Llenovo/app/ActionBarDrawerToggle$JellybeanMr2Delegate;-><init>(Landroid/app/Activity;Llenovo/app/ActionBarDrawerToggle$JellybeanMr2Delegate;)V

    iput-object v0, p0, Llenovo/app/ActionBarDrawerToggle;->mActivityImpl:Llenovo/app/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    .line 212
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_4

    .line 213
    new-instance v0, Llenovo/app/ActionBarDrawerToggle$HoneycombDelegate;

    invoke-direct {v0, p1, v2}, Llenovo/app/ActionBarDrawerToggle$HoneycombDelegate;-><init>(Landroid/app/Activity;Llenovo/app/ActionBarDrawerToggle$HoneycombDelegate;)V

    iput-object v0, p0, Llenovo/app/ActionBarDrawerToggle;->mActivityImpl:Llenovo/app/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    .line 215
    :cond_4
    new-instance v0, Llenovo/app/ActionBarDrawerToggle$DummyDelegate;

    invoke-direct {v0, p1}, Llenovo/app/ActionBarDrawerToggle$DummyDelegate;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Llenovo/app/ActionBarDrawerToggle;->mActivityImpl:Llenovo/app/ActionBarDrawerToggle$Delegate;

    goto :goto_0

    .line 225
    :cond_5
    iput-object p4, p0, Llenovo/app/ActionBarDrawerToggle;->mSlider:Llenovo/app/ActionBarDrawerToggle$DrawerToggle;

    goto :goto_1
.end method

.method private toggle()V
    .locals 2

    .prologue
    const v1, 0x800003

    .line 287
    iget-object v0, p0, Llenovo/app/ActionBarDrawerToggle;->mDrawerLayout:Llenovo/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Llenovo/widget/DrawerLayout;->isDrawerVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Llenovo/app/ActionBarDrawerToggle;->mDrawerLayout:Llenovo/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Llenovo/widget/DrawerLayout;->closeDrawer(I)V

    .line 286
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Llenovo/app/ActionBarDrawerToggle;->mDrawerLayout:Llenovo/widget/DrawerLayout;

    invoke-virtual {v0, v1}, Llenovo/widget/DrawerLayout;->openDrawer(I)V

    goto :goto_0
.end method


# virtual methods
.method getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Llenovo/app/ActionBarDrawerToggle;->mActivityImpl:Llenovo/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0}, Llenovo/app/ActionBarDrawerToggle$Delegate;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getToolbarNavigationClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Llenovo/app/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public isDrawerIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 343
    iget-boolean v0, p0, Llenovo/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 263
    iget-boolean v0, p0, Llenovo/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    if-nez v0, :cond_0

    .line 264
    invoke-virtual {p0}, Llenovo/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Llenovo/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 266
    :cond_0
    invoke-virtual {p0}, Llenovo/app/ActionBarDrawerToggle;->syncState()V

    .line 261
    return-void
.end method

.method public onDrawerClosed(Landroid/view/View;)V
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 407
    iget-object v0, p0, Llenovo/app/ActionBarDrawerToggle;->mSlider:Llenovo/app/ActionBarDrawerToggle$DrawerToggle;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Llenovo/app/ActionBarDrawerToggle$DrawerToggle;->setPosition(F)V

    .line 408
    iget-boolean v0, p0, Llenovo/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 409
    iget v0, p0, Llenovo/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    invoke-virtual {p0, v0}, Llenovo/app/ActionBarDrawerToggle;->setActionBarDescription(I)V

    .line 406
    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 2
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 392
    iget-object v0, p0, Llenovo/app/ActionBarDrawerToggle;->mSlider:Llenovo/app/ActionBarDrawerToggle$DrawerToggle;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Llenovo/app/ActionBarDrawerToggle$DrawerToggle;->setPosition(F)V

    .line 393
    iget-boolean v0, p0, Llenovo/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 394
    iget v0, p0, Llenovo/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    invoke-virtual {p0, v0}, Llenovo/app/ActionBarDrawerToggle;->setActionBarDescription(I)V

    .line 391
    :cond_0
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 3
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .prologue
    .line 380
    iget-object v0, p0, Llenovo/app/ActionBarDrawerToggle;->mSlider:Llenovo/app/ActionBarDrawerToggle$DrawerToggle;

    const/4 v1, 0x0

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-interface {v0, v1}, Llenovo/app/ActionBarDrawerToggle$DrawerToggle;->setPosition(F)V

    .line 379
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 0
    .param p1, "newState"    # I

    .prologue
    .line 421
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 279
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Llenovo/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 280
    invoke-direct {p0}, Llenovo/app/ActionBarDrawerToggle;->toggle()V

    .line 281
    const/4 v0, 0x1

    return v0

    .line 283
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setActionBarDescription(I)V
    .locals 1
    .param p1, "contentDescRes"    # I

    .prologue
    .line 456
    iget-object v0, p0, Llenovo/app/ActionBarDrawerToggle;->mActivityImpl:Llenovo/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0, p1}, Llenovo/app/ActionBarDrawerToggle$Delegate;->setActionBarDescription(I)V

    .line 455
    return-void
.end method

.method setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 1
    .param p1, "upDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "contentDescRes"    # I

    .prologue
    .line 452
    iget-object v0, p0, Llenovo/app/ActionBarDrawerToggle;->mActivityImpl:Llenovo/app/ActionBarDrawerToggle$Delegate;

    invoke-interface {v0, p1, p2}, Llenovo/app/ActionBarDrawerToggle$Delegate;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 451
    return-void
.end method

.method public setDrawerIndicatorEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 357
    iget-boolean v0, p0, Llenovo/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eq p1, v0, :cond_0

    .line 358
    if-eqz p1, :cond_2

    .line 359
    iget-object v0, p0, Llenovo/app/ActionBarDrawerToggle;->mSlider:Llenovo/app/ActionBarDrawerToggle$DrawerToggle;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 360
    iget-object v1, p0, Llenovo/app/ActionBarDrawerToggle;->mDrawerLayout:Llenovo/widget/DrawerLayout;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Llenovo/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 361
    iget v1, p0, Llenovo/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    .line 359
    :goto_0
    invoke-virtual {p0, v0, v1}, Llenovo/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 365
    :goto_1
    iput-boolean p1, p0, Llenovo/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    .line 356
    :cond_0
    return-void

    .line 361
    :cond_1
    iget v1, p0, Llenovo/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    goto :goto_0

    .line 363
    :cond_2
    iget-object v0, p0, Llenovo/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Llenovo/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_1
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "indicator":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 333
    iget-object v1, p0, Llenovo/app/ActionBarDrawerToggle;->mDrawerLayout:Llenovo/widget/DrawerLayout;

    invoke-virtual {v1}, Llenovo/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 335
    .end local v0    # "indicator":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0, v0}, Llenovo/app/ActionBarDrawerToggle;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 330
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 306
    if-nez p1, :cond_1

    .line 307
    invoke-virtual {p0}, Llenovo/app/ActionBarDrawerToggle;->getThemeUpIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Llenovo/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 308
    iput-boolean v1, p0, Llenovo/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    .line 314
    :goto_0
    iget-boolean v0, p0, Llenovo/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-nez v0, :cond_0

    .line 315
    iget-object v0, p0, Llenovo/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1}, Llenovo/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 305
    :cond_0
    return-void

    .line 310
    :cond_1
    iput-object p1, p0, Llenovo/app/ActionBarDrawerToggle;->mHomeAsUpIndicator:Landroid/graphics/drawable/Drawable;

    .line 311
    const/4 v0, 0x1

    iput-boolean v0, p0, Llenovo/app/ActionBarDrawerToggle;->mHasCustomUpIndicator:Z

    goto :goto_0
.end method

.method public setToolbarNavigationClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onToolbarNavigationClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 448
    iput-object p1, p0, Llenovo/app/ActionBarDrawerToggle;->mToolbarNavigationClickListener:Landroid/view/View$OnClickListener;

    .line 447
    return-void
.end method

.method public syncState()V
    .locals 3

    .prologue
    const v2, 0x800003

    .line 241
    iget-object v0, p0, Llenovo/app/ActionBarDrawerToggle;->mDrawerLayout:Llenovo/widget/DrawerLayout;

    invoke-virtual {v0, v2}, Llenovo/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Llenovo/app/ActionBarDrawerToggle;->mSlider:Llenovo/app/ActionBarDrawerToggle$DrawerToggle;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Llenovo/app/ActionBarDrawerToggle$DrawerToggle;->setPosition(F)V

    .line 246
    :goto_0
    iget-boolean v0, p0, Llenovo/app/ActionBarDrawerToggle;->mDrawerIndicatorEnabled:Z

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Llenovo/app/ActionBarDrawerToggle;->mSlider:Llenovo/app/ActionBarDrawerToggle$DrawerToggle;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 248
    iget-object v1, p0, Llenovo/app/ActionBarDrawerToggle;->mDrawerLayout:Llenovo/widget/DrawerLayout;

    invoke-virtual {v1, v2}, Llenovo/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 249
    iget v1, p0, Llenovo/app/ActionBarDrawerToggle;->mCloseDrawerContentDescRes:I

    .line 247
    :goto_1
    invoke-virtual {p0, v0, v1}, Llenovo/app/ActionBarDrawerToggle;->setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V

    .line 240
    :cond_0
    return-void

    .line 244
    :cond_1
    iget-object v0, p0, Llenovo/app/ActionBarDrawerToggle;->mSlider:Llenovo/app/ActionBarDrawerToggle$DrawerToggle;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Llenovo/app/ActionBarDrawerToggle$DrawerToggle;->setPosition(F)V

    goto :goto_0

    .line 249
    :cond_2
    iget v1, p0, Llenovo/app/ActionBarDrawerToggle;->mOpenDrawerContentDescRes:I

    goto :goto_1
.end method
