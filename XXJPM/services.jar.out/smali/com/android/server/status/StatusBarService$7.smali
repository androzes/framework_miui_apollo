.class Lcom/android/server/status/StatusBarService$7;
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
    .line 1593
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$7;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const-string v4, "StatusBar"

    .line 1599
    :try_start_0
    const-string v2, "phoneext"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyExt;

    move-result-object v1

    .line 1601
    .local v1, iTelephonyExt:Lcom/android/internal/telephony/ITelephonyExt;
    if-eqz v1, :cond_0

    .line 1602
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephonyExt;->switchHoldingAndActive()V

    .line 1609
    .end local v1           #iTelephonyExt:Lcom/android/internal/telephony/ITelephonyExt;
    :goto_0
    return-void

    .line 1604
    .restart local v1       #iTelephonyExt:Lcom/android/internal/telephony/ITelephonyExt;
    :cond_0
    const-string v2, "StatusBar"

    const-string v3, "failed to get ITelephony interface"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1606
    .end local v1           #iTelephonyExt:Lcom/android/internal/telephony/ITelephonyExt;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1607
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "StatusBar"

    const-string v2, "RemoteException from getPhoneInterface()"

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
