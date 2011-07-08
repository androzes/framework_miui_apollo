.class Lcom/android/server/status/StatusBarService$9;
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
    .line 1635
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$9;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const-string v6, "StatusBar"

    .line 1641
    const/4 v3, 0x0

    .line 1643
    .local v3, isSpeakerOn:Z
    :try_start_0
    iget-object v4, p0, Lcom/android/server/status/StatusBarService$9;->this$0:Lcom/android/server/status/StatusBarService;

    iget-object v4, v4, Lcom/android/server/status/StatusBarService;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1644
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v3

    .line 1646
    const-string v4, "phoneext"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v2

    .line 1648
    .local v2, iTelephonyExt:Lcom/android/internal/telephony/ITelephonyExt;
    if-eqz v2, :cond_1

    .line 1649
    if-nez v3, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-interface {v2, v4}, Lcom/android/internal/telephony/ITelephonyExt;->turnOnSpeaker(Z)V

    .line 1656
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v2           #iTelephonyExt:Lcom/android/internal/telephony/ITelephonyExt;
    :goto_1
    return-void

    .line 1649
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v2       #iTelephonyExt:Lcom/android/internal/telephony/ITelephonyExt;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1651
    :cond_1
    const-string v4, "StatusBar"

    const-string v5, "failed to get ITelephony interface"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1653
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v2           #iTelephonyExt:Lcom/android/internal/telephony/ITelephonyExt;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 1654
    .local v1, ex:Landroid/os/RemoteException;
    const-string v4, "StatusBar"

    const-string v4, "RemoteException from getPhoneInterface()"

    invoke-static {v6, v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
