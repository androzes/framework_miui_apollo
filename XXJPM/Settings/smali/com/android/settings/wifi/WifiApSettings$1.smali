.class Lcom/android/settings/wifi/WifiApSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiApSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiApSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiApSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 182
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 184
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    const-string v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/settings/wifi/WifiApSettings;->access$000(Lcom/android/settings/wifi/WifiApSettings;I)V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 187
    const-string v5, "level"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 188
    .local v2, level:I
    const-string v5, "plugged"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 189
    .local v3, plugged:I
    invoke-static {}, Lcom/android/settings/wifi/WifiApSettings;->access$100()I

    move-result v5

    if-lt v5, v2, :cond_2

    if-nez v3, :cond_2

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiApSettings;->access$200(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2

    .line 190
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v5, v6}, Lcom/android/settings/wifi/WifiApSettings;->access$302(Lcom/android/settings/wifi/WifiApSettings;Z)Z

    .line 191
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiApSettings;->access$200(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 192
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiApSettings;->access$200(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    const v6, 0x7f09049e

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 193
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiApSettings;->access$400(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 195
    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiApSettings;->access$300(Lcom/android/settings/wifi/WifiApSettings;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 196
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v5, v7}, Lcom/android/settings/wifi/WifiApSettings;->access$302(Lcom/android/settings/wifi/WifiApSettings;Z)Z

    .line 197
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiApSettings;->access$200(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 198
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiApSettings;->access$200(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiApSettings;->access$400(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 203
    .end local v2           #level:I
    .end local v3           #plugged:I
    :cond_3
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 204
    const-string v5, "state"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 205
    .local v1, extra:Z
    const/4 v4, 0x0

    .line 206
    .local v4, tempState:I
    if-eqz v1, :cond_4

    .line 207
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiApSettings;->access$500(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApEnabler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiApEnabler;->savePreviousWifiApStateForAirpalenMode()I

    move-result v4

    goto/16 :goto_0

    .line 210
    :cond_4
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiApSettings;->access$200(Lcom/android/settings/wifi/WifiApSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 211
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiApSettings;->access$500(Lcom/android/settings/wifi/WifiApSettings;)Lcom/android/settings/wifi/WifiApEnabler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiApEnabler;->getPreviousWifiApStateForAirpalenMode()I

    move-result v4

    .line 212
    if-eq v4, v6, :cond_0

    .line 213
    iget-object v5, p0, Lcom/android/settings/wifi/WifiApSettings$1;->this$0:Lcom/android/settings/wifi/WifiApSettings;

    invoke-static {v5}, Lcom/android/settings/wifi/WifiApSettings;->access$600(Lcom/android/settings/wifi/WifiApSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5, v8, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0
.end method
