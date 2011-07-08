.class Lcom/android/server/status/StatusBarService$8;
.super Ljava/lang/Object;
.source "StatusBarService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/status/StatusBarService;->setupQuickPanelCallView()V
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
    .line 1613
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$8;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const-string v5, "StatusBar"

    .line 1619
    const/4 v2, 0x0

    .line 1620
    .local v2, isMute:Z
    :try_start_0
    const-string v3, "phoneext"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    .line 1622
    .local v1, iTelephonyExt:Lcom/android/internal/telephony/ITelephonyExt;
    if-eqz v1, :cond_1

    .line 1623
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyExt;->getMute()Z

    move-result v2

    .line 1624
    if-nez v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v1, v3}, Lcom/android/internal/telephony/ITelephonyExt;->setMute(Z)V

    .line 1631
    .end local v1           #iTelephonyExt:Lcom/android/internal/telephony/ITelephonyExt;
    :goto_1
    return-void

    .line 1624
    .restart local v1       #iTelephonyExt:Lcom/android/internal/telephony/ITelephonyExt;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1626
    :cond_1
    const-string v3, "StatusBar"

    const-string v4, "failed to get ITelephony interface"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1628
    .end local v1           #iTelephonyExt:Lcom/android/internal/telephony/ITelephonyExt;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1629
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "StatusBar"

    const-string v3, "RemoteException from getPhoneInterface()"

    invoke-static {v5, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
