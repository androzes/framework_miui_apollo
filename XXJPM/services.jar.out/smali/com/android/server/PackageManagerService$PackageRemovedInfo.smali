.class Lcom/android/server/PackageManagerService$PackageRemovedInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageRemovedInfo"
.end annotation


# instance fields
.field args:Lcom/android/server/PackageManagerService$InstallArgs;

.field isRemovedPackageSystemUpdate:Z

.field removedPackage:Ljava/lang/String;

.field removedUid:I

.field uid:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 6204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6206
    iput v0, p0, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->uid:I

    .line 6207
    iput v0, p0, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedUid:I

    .line 6208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    .line 6210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/PackageManagerService$InstallArgs;

    return-void
.end method


# virtual methods
.method sendBroadcast(ZZ)V
    .locals 5
    .parameter "fullRemove"
    .parameter "replacing"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6213
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 6214
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "android.intent.extra.UID"

    iget v2, p0, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedUid:I

    if-ltz v2, :cond_3

    iget v2, p0, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedUid:I

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6215
    const-string v1, "android.intent.extra.DATA_REMOVED"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6216
    if-eqz p2, :cond_0

    .line 6217
    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6219
    :cond_0
    iget-object v1, p0, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 6220
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    iget-object v2, p0, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    invoke-static {v1, v2, v0, v3}, Lcom/android/server/PackageManagerService;->access$600(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/IIntentReceiver;)V

    .line 6222
    :cond_1
    iget v1, p0, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedUid:I

    if-ltz v1, :cond_2

    .line 6223
    const-string v1, "android.intent.action.UID_REMOVED"

    invoke-static {v1, v3, v0, v3}, Lcom/android/server/PackageManagerService;->access$600(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/IIntentReceiver;)V

    .line 6225
    :cond_2
    return-void

    .line 6214
    :cond_3
    iget v2, p0, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->uid:I

    goto :goto_0
.end method
