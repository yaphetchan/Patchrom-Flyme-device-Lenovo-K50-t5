.class public interface abstract Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$ICallBack;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICallBack"
.end annotation


# virtual methods
.method public abstract callBack(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flyme/deviceoriginalsettings/deviceinfo/StorageMeasurement$FileInfo;",
            ">;)V"
        }
    .end annotation
.end method
