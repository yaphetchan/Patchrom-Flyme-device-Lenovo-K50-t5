.class Lcom/android/server/wifi/WifiConfigStore$4;
.super Ljava/lang/Object;
.source "WifiConfigStore.java"

# interfaces
.implements Lcom/android/server/net/DelayedDiskWrite$Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiConfigStore;->writeAutoConnectableConfigurations(Ljava/lang/String;Landroid/util/SparseArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiConfigStore;

.field final synthetic val$networks:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConfigStore;Landroid/util/SparseArray;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConfigStore;

    .prologue
    .line 5182
    .local p2, "val$networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigStore$4;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    iput-object p2, p0, Lcom/android/server/wifi/WifiConfigStore$4;->val$networks:Landroid/util/SparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteCalled(Ljava/io/DataOutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5186
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore$4;->val$networks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5188
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore$4;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore$4;->val$networks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore$4;->val$networks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, p1, v3, v1}, Lcom/android/server/wifi/WifiConfigStore;->-wrap0(Lcom/android/server/wifi/WifiConfigStore;Ljava/io/DataOutputStream;II)Z

    .line 5186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5191
    :cond_0
    return-void
.end method
