.class final Lcom/android/server/PackageManagerService$Settings$PendingPackage;
.super Lcom/android/server/PackageManagerService$PackageSettingBase;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService$Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PendingPackage"
.end annotation


# instance fields
.field final sharedId:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;III)V
    .locals 7
    .parameter "name"
    .parameter "realName"
    .parameter "codePath"
    .parameter "resourcePath"
    .parameter "sharedId"
    .parameter "pVersionCode"
    .parameter "pkgFlags"

    .prologue
    .line 7924
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/PackageManagerService$PackageSettingBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/io/File;II)V

    .line 7925
    iput p5, p0, Lcom/android/server/PackageManagerService$Settings$PendingPackage;->sharedId:I

    .line 7926
    return-void
.end method
