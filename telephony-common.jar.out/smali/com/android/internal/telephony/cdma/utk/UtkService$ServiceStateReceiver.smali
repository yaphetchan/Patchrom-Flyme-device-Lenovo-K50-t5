.class public Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UtkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/utk/UtkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceStateReceiver"
.end annotation


# instance fields
.field mOldState:I

.field final synthetic this$0:Lcom/android/internal/telephony/cdma/utk/UtkService;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/utk/UtkService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/internal/telephony/cdma/utk/UtkService;

    .prologue
    .line 1902
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;->this$0:Lcom/android/internal/telephony/cdma/utk/UtkService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1903
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;->mOldState:I

    .line 1902
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1906
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1907
    :cond_0
    return-void

    .line 1909
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1910
    const-string/jumbo v2, "phone"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1911
    .local v0, "phoneId":I
    const-string/jumbo v2, "UtkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "service state changed phoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    invoke-static {}, Lcom/android/internal/telephony/cdma/utk/UtkService;->-get3()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 1913
    const-string/jumbo v2, "UtkService"

    const-string/jumbo v3, "ignore unuseful service state"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1914
    return-void

    .line 1916
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v1

    .line 1917
    .local v1, "serviceState":Landroid/telephony/ServiceState;
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_5

    .line 1918
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;->this$0:Lcom/android/internal/telephony/cdma/utk/UtkService;

    invoke-static {v2, v5}, Lcom/android/internal/telephony/cdma/utk/UtkService;->-set0(Lcom/android/internal/telephony/cdma/utk/UtkService;I)I

    .line 1925
    :cond_3
    :goto_0
    const-string/jumbo v2, "UtkService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "service state changed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;->this$0:Lcom/android/internal/telephony/cdma/utk/UtkService;

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/utk/UtkService;->-get1(Lcom/android/internal/telephony/cdma/utk/UtkService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;->mOldState:I

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;->this$0:Lcom/android/internal/telephony/cdma/utk/UtkService;

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/utk/UtkService;->-get1(Lcom/android/internal/telephony/cdma/utk/UtkService;)I

    move-result v3

    if-eq v2, v3, :cond_4

    .line 1927
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;->this$0:Lcom/android/internal/telephony/cdma/utk/UtkService;

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/utk/UtkService;->-get1(Lcom/android/internal/telephony/cdma/utk/UtkService;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;->mOldState:I

    .line 1929
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;->this$0:Lcom/android/internal/telephony/cdma/utk/UtkService;

    invoke-static {v2}, Lcom/android/internal/telephony/cdma/utk/UtkService;->-wrap0(Lcom/android/internal/telephony/cdma/utk/UtkService;)V

    .line 1905
    .end local v0    # "phoneId":I
    .end local v1    # "serviceState":Landroid/telephony/ServiceState;
    :cond_4
    return-void

    .line 1919
    .restart local v0    # "phoneId":I
    .restart local v1    # "serviceState":Landroid/telephony/ServiceState;
    :cond_5
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-ne v2, v6, :cond_6

    .line 1920
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;->this$0:Lcom/android/internal/telephony/cdma/utk/UtkService;

    invoke-static {v2, v7}, Lcom/android/internal/telephony/cdma/utk/UtkService;->-set0(Lcom/android/internal/telephony/cdma/utk/UtkService;I)I

    goto :goto_0

    .line 1921
    :cond_6
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-ne v2, v7, :cond_3

    .line 1922
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$ServiceStateReceiver;->this$0:Lcom/android/internal/telephony/cdma/utk/UtkService;

    invoke-static {v2, v6}, Lcom/android/internal/telephony/cdma/utk/UtkService;->-set0(Lcom/android/internal/telephony/cdma/utk/UtkService;I)I

    goto :goto_0
.end method
