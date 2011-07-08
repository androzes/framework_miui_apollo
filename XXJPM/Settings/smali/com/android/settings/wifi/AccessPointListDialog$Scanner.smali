.class Lcom/android/settings/wifi/AccessPointListDialog$Scanner;
.super Landroid/os/Handler;
.source "AccessPointListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/AccessPointListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Scanner"
.end annotation


# instance fields
.field private mRetry:I

.field final synthetic this$0:Lcom/android/settings/wifi/AccessPointListDialog;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/AccessPointListDialog;)V
    .locals 1
    .parameter

    .prologue
    .line 815
    iput-object p1, p0, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 816
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->mRetry:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/AccessPointListDialog;Lcom/android/settings/wifi/AccessPointListDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 815
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;-><init>(Lcom/android/settings/wifi/AccessPointListDialog;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 832
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPointListDialog;->access$800(Lcom/android/settings/wifi/AccessPointListDialog;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScanActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 834
    iput v2, p0, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->mRetry:I

    .line 842
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPointListDialog;->access$900(Lcom/android/settings/wifi/AccessPointListDialog;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    if-nez v0, :cond_2

    .line 843
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPointListDialog;->access$700(Lcom/android/settings/wifi/AccessPointListDialog;)Lcom/android/settings/ProgressCategory;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 850
    :goto_0
    const-wide/16 v0, 0x1770

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->sendEmptyMessageDelayed(IJ)Z

    .line 851
    :goto_1
    return-void

    .line 835
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->mRetry:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->mRetry:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 836
    iput v2, p0, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->mRetry:I

    .line 837
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    const v1, 0x7f0900ed

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 844
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPointListDialog;->access$900(Lcom/android/settings/wifi/AccessPointListDialog;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPointListDialog;->access$900(Lcom/android/settings/wifi/AccessPointListDialog;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPointListDialog;->access$900(Lcom/android/settings/wifi/AccessPointListDialog;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPointListDialog;->access$900(Lcom/android/settings/wifi/AccessPointListDialog;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v1, :cond_4

    .line 846
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPointListDialog;->access$700(Lcom/android/settings/wifi/AccessPointListDialog;)Lcom/android/settings/ProgressCategory;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    goto :goto_0

    .line 848
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPointListDialog;->access$700(Lcom/android/settings/wifi/AccessPointListDialog;)Lcom/android/settings/ProgressCategory;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    goto :goto_0
.end method

.method pause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 825
    iput v1, p0, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->mRetry:I

    .line 826
    iget-object v0, p0, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->this$0:Lcom/android/settings/wifi/AccessPointListDialog;

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPointListDialog;->access$700(Lcom/android/settings/wifi/AccessPointListDialog;)Lcom/android/settings/ProgressCategory;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/ProgressCategory;->setProgress(Z)V

    .line 827
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->removeMessages(I)V

    .line 828
    return-void
.end method

.method resume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 819
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 820
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AccessPointListDialog$Scanner;->sendEmptyMessage(I)Z

    .line 822
    :cond_0
    return-void
.end method
