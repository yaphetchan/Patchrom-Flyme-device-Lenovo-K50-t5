.class Lcom/flyme/deviceoriginalsettings/RadioInfo$17;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V
    .locals 0

    .prologue
    .line 1038
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$17;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$17;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    # getter for: Lcom/flyme/deviceoriginalsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->access$1900(Lcom/flyme/deviceoriginalsettings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$17;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    # getter for: Lcom/flyme/deviceoriginalsettings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->access$1900(Lcom/flyme/deviceoriginalsettings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    .line 1041
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/RadioInfo$17;->this$0:Lcom/flyme/deviceoriginalsettings/RadioInfo;

    # invokes: Lcom/flyme/deviceoriginalsettings/RadioInfo;->updateDnsCheckState()V
    invoke-static {v0}, Lcom/flyme/deviceoriginalsettings/RadioInfo;->access$4200(Lcom/flyme/deviceoriginalsettings/RadioInfo;)V

    .line 1042
    return-void

    .line 1040
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
