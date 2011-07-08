.class public interface abstract Lcom/android/server/status/StatusBarService$NotificationCallbacks;
.super Ljava/lang/Object;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NotificationCallbacks"
.end annotation


# virtual methods
.method public abstract onClearAll()V
.end method

.method public abstract onNotificationClick(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onPanelRevealed()V
.end method

.method public abstract onSetDisabled(I)V
.end method
