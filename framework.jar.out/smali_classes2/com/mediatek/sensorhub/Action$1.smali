.class final Lcom/mediatek/sensorhub/Action$1;
.super Ljava/lang/Object;
.source "Action.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/sensorhub/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/mediatek/sensorhub/Action;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/sensorhub/Action;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 167
    new-instance v0, Lcom/mediatek/sensorhub/Action;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/mediatek/sensorhub/Action;-><init>(Landroid/os/Parcel;Lcom/mediatek/sensorhub/Action;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lcom/mediatek/sensorhub/Action$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/sensorhub/Action;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/mediatek/sensorhub/Action;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 171
    new-array v0, p1, [Lcom/mediatek/sensorhub/Action;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/mediatek/sensorhub/Action$1;->newArray(I)[Lcom/mediatek/sensorhub/Action;

    move-result-object v0

    return-object v0
.end method
