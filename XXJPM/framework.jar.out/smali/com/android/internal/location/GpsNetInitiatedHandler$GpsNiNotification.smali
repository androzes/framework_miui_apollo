.class public Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
.super Ljava/lang/Object;
.source "GpsNetInitiatedHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/GpsNetInitiatedHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GpsNiNotification"
.end annotation


# instance fields
.field defaultResponse:I

.field extras:Landroid/os/Bundle;

.field needNotify:Z

.field needVerify:Z

.field niType:I

.field notificationId:I

.field privacyOverride:Z

.field requestorId:Ljava/lang/String;

.field requestorIdEncoding:I

.field text:Ljava/lang/String;

.field textEncoding:I

.field timeout:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
