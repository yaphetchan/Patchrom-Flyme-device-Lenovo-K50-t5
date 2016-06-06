.class public Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;
.super Landroid/preference/Preference;
.source "DropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference$Callback;
    }
.end annotation


# instance fields
.field private final mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mSpinner:Landroid/widget/Spinner;

.field private final mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->mValues:Ljava/util/ArrayList;

    .line 46
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->mContext:Landroid/content/Context;

    const v2, 0x1090009

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 50
    new-instance v0, Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    .line 51
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 52
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 53
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference$1;

    invoke-direct {v1, p0}, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference$1;-><init>(Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->setPersistent(Z)V

    .line 66
    new-instance v0, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference$2;

    invoke-direct {v0, p0}, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference$2;-><init>(Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;)V

    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method


# virtual methods
.method public addItem(ILjava/lang/Object;)V
    .locals 1
    .param p1, "captionResid"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public addItem(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "caption"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 108
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public clearItems()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 113
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 114
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 118
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 119
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 123
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    move-object v1, p1

    .line 125
    check-cast v1, Landroid/view/ViewGroup;

    .line 126
    .local v1, "vg":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 127
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 128
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 129
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setCallback(Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference$Callback;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->mCallback:Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference$Callback;

    .line 82
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 2
    .param p1, "dimenResId"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    .line 78
    return-void
.end method

.method public setSelectedItem(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 85
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 86
    .local v1, "value":Ljava/lang/Object;
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->mCallback:Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference$Callback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->mCallback:Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference$Callback;

    invoke-interface {v2, p1, v1}, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference$Callback;->onItemSelected(ILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 93
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 90
    iget-object v2, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 91
    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 92
    .local v0, "disableDependents":Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->notifyDependencyChange(Z)V

    goto :goto_0

    .line 91
    .end local v0    # "disableDependents":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setSelectedValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 96
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 97
    .local v0, "i":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 98
    invoke-virtual {p0, v0}, Lcom/flyme/deviceoriginalsettings/fuelgauge/DropDownPreference;->setSelectedItem(I)V

    .line 100
    :cond_0
    return-void
.end method