.class final Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDeviceFilter$AllFilter;
.super Ljava/lang/Object;
.source "BluetoothDeviceFilter.java"

# interfaces
.implements Lcom/lenovoframework/adapter/essential/Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDeviceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AllFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDeviceFilter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDeviceFilter$1;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/bluetooth/BluetoothDeviceFilter$AllFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 102
    const/4 v0, 0x1

    return v0
.end method
