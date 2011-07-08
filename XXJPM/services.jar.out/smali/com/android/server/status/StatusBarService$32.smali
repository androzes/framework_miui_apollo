.class Lcom/android/server/status/StatusBarService$32;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/server/status/StatusBarService;)V
    .locals 0
    .parameter

    .prologue
    .line 3648
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$32;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3649
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$32;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v2, v2, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 3651
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 3652
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    .line 3654
    .local v1, wifiState:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 3655
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$32;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v2, v2, Lcom/android/server/status/StatusBarService;->mWiFiBtn:Landroid/widget/TextView;

    const v3, -0x383839

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3656
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$32;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v2, v2, Lcom/android/server/status/StatusBarService;->mWiFiBtn:Landroid/widget/TextView;

    const v3, 0x1040315

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 3657
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$32;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v2, v2, Lcom/android/server/status/StatusBarService;->mWiFiBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3658
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabledDialog(Z)Z

    .line 3684
    .end local v1           #wifiState:I
    :cond_0
    :goto_0
    return-void

    .line 3659
    .restart local v1       #wifiState:I
    :cond_1
    if-ne v1, v5, :cond_0

    .line 3660
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$32;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v2, v2, Lcom/android/server/status/StatusBarService;->mWiFiBtn:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3661
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$32;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v2, v2, Lcom/android/server/status/StatusBarService;->mWiFiBtn:Landroid/widget/TextView;

    const v3, 0x1040314

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 3662
    iget-object v2, p0, Lcom/android/server/status/StatusBarService$32;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v2, v2, Lcom/android/server/status/StatusBarService;->mWiFiBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3681
    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabledDialog(Z)Z

    goto :goto_0
.end method
