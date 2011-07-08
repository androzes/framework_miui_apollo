.class Lcom/android/server/status/StatusBarPolicy$5;
.super Ljava/lang/Object;
.source "StatusBarPolicy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/status/StatusBarPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 1161
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy$5;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x0

    .line 1162
    const-string v0, "StatusBarPolicy"

    const-string v1, "mFullChargeListener"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$5;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0, v2}, Lcom/android/server/status/StatusBarPolicy;->access$2602(Lcom/android/server/status/StatusBarPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1165
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$5;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0, v2}, Lcom/android/server/status/StatusBarPolicy;->access$2702(Lcom/android/server/status/StatusBarPolicy;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1167
    iget-object v0, p0, Lcom/android/server/status/StatusBarPolicy$5;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v0}, Lcom/android/server/status/StatusBarPolicy;->access$2200(Lcom/android/server/status/StatusBarPolicy;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1168
    return-void
.end method
