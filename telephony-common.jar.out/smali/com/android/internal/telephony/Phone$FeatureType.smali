.class public final enum Lcom/android/internal/telephony/Phone$FeatureType;
.super Ljava/lang/Enum;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FeatureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/Phone$FeatureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/Phone$FeatureType;

.field public static final enum VIDEO_RESTRICTION:Lcom/android/internal/telephony/Phone$FeatureType;

.field public static final enum VOLTE_CONF_REMOVE_MEMBER:Lcom/android/internal/telephony/Phone$FeatureType;

.field public static final enum VOLTE_ENHANCED_CONFERENCE:Lcom/android/internal/telephony/Phone$FeatureType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2684
    new-instance v0, Lcom/android/internal/telephony/Phone$FeatureType;

    const-string/jumbo v1, "VOLTE_ENHANCED_CONFERENCE"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Phone$FeatureType;-><init>(Ljava/lang/String;I)V

    .line 2685
    sput-object v0, Lcom/android/internal/telephony/Phone$FeatureType;->VOLTE_ENHANCED_CONFERENCE:Lcom/android/internal/telephony/Phone$FeatureType;

    .line 2687
    new-instance v0, Lcom/android/internal/telephony/Phone$FeatureType;

    const-string/jumbo v1, "VOLTE_CONF_REMOVE_MEMBER"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/Phone$FeatureType;-><init>(Ljava/lang/String;I)V

    .line 2688
    sput-object v0, Lcom/android/internal/telephony/Phone$FeatureType;->VOLTE_CONF_REMOVE_MEMBER:Lcom/android/internal/telephony/Phone$FeatureType;

    .line 2690
    new-instance v0, Lcom/android/internal/telephony/Phone$FeatureType;

    const-string/jumbo v1, "VIDEO_RESTRICTION"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/Phone$FeatureType;-><init>(Ljava/lang/String;I)V

    .line 2691
    sput-object v0, Lcom/android/internal/telephony/Phone$FeatureType;->VIDEO_RESTRICTION:Lcom/android/internal/telephony/Phone$FeatureType;

    .line 2683
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/Phone$FeatureType;

    sget-object v1, Lcom/android/internal/telephony/Phone$FeatureType;->VOLTE_ENHANCED_CONFERENCE:Lcom/android/internal/telephony/Phone$FeatureType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/Phone$FeatureType;->VOLTE_CONF_REMOVE_MEMBER:Lcom/android/internal/telephony/Phone$FeatureType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/Phone$FeatureType;->VIDEO_RESTRICTION:Lcom/android/internal/telephony/Phone$FeatureType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/Phone$FeatureType;->$VALUES:[Lcom/android/internal/telephony/Phone$FeatureType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 2683
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$FeatureType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2683
    const-class v0, Lcom/android/internal/telephony/Phone$FeatureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone$FeatureType;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/Phone$FeatureType;
    .locals 1

    .prologue
    .line 2683
    sget-object v0, Lcom/android/internal/telephony/Phone$FeatureType;->$VALUES:[Lcom/android/internal/telephony/Phone$FeatureType;

    return-object v0
.end method
