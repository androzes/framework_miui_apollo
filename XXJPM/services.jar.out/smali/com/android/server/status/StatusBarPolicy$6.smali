.class Lcom/android/server/status/StatusBarPolicy$6;
.super Landroid/telephony/PhoneStateListener;
.source "StatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/status/StatusBarPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 1218
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy$6;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$6;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0, p1}, Lcom/android/server/status/StatusBarPolicy;->access$3100(Lcom/android/server/status/StatusBarPolicy;I)V

    .line 1205
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$6;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$3200(Lcom/android/server/status/StatusBarPolicy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$6;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$2800(Lcom/android/server/status/StatusBarPolicy;)V

    .line 1208
    :cond_0
    return-void
.end method

.method public onDataActivity(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$6;->this$0:Lcom/android/server/status/StatusBarPolicy;

    iput p1, v0, Lcom/android/server/status/StatusBarPolicy;->mDataActivity:I

    .line 1220
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$6;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$3000(Lcom/android/server/status/StatusBarPolicy;)V

    .line 1221
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 1
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$6;->this$0:Lcom/android/server/status/StatusBarPolicy;

    iput p1, v0, Lcom/android/server/status/StatusBarPolicy;->mDataState:I

    .line 1213
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$6;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0, p2}, Lcom/android/server/status/StatusBarPolicy;->access$3300(Lcom/android/server/status/StatusBarPolicy;I)V

    .line 1214
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$6;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$3000(Lcom/android/server/status/StatusBarPolicy;)V

    .line 1215
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$6;->this$0:Lcom/android/server/status/StatusBarPolicy;

    iput-object p1, v0, Lcom/android/server/status/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    .line 1196
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$6;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$2800(Lcom/android/server/status/StatusBarPolicy;)V

    .line 1197
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$6;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0, p1}, Lcom/android/server/status/StatusBarPolicy;->access$2900(Lcom/android/server/status/StatusBarPolicy;Landroid/telephony/ServiceState;)V

    .line 1198
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$6;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$3000(Lcom/android/server/status/StatusBarPolicy;)V

    .line 1199
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .parameter "signalStrength"

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$6;->this$0:Lcom/android/server/status/StatusBarPolicy;

    iput-object p1, v0, Lcom/android/server/status/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1190
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$6;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$2800(Lcom/android/server/status/StatusBarPolicy;)V

    .line 1191
    return-void
.end method
