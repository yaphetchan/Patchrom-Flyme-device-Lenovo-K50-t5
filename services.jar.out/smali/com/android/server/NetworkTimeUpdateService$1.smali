.class Lcom/android/server/NetworkTimeUpdateService$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkTimeUpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkTimeUpdateService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkTimeUpdateService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NetworkTimeUpdateService;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/server/NetworkTimeUpdateService$1;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 346
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 347
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 348
    const-string/jumbo v1, "NetworkTimeUpdateService"

    const-string/jumbo v2, "mNitzReceiver Receive ACTION_NETWORK_SET_TIME"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService$1;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/NetworkTimeUpdateService;->-set1(Lcom/android/server/NetworkTimeUpdateService;J)J

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    const-string/jumbo v1, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    const-string/jumbo v1, "NetworkTimeUpdateService"

    const-string/jumbo v2, "mNitzReceiver Receive ACTION_NETWORK_SET_TIMEZONE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v1, p0, Lcom/android/server/NetworkTimeUpdateService$1;->this$0:Lcom/android/server/NetworkTimeUpdateService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/NetworkTimeUpdateService;->-set2(Lcom/android/server/NetworkTimeUpdateService;J)J

    goto :goto_0
.end method