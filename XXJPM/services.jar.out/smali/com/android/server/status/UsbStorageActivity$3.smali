.class Lcom/android/server/status/UsbStorageActivity$3;
.super Ljava/lang/Object;
.source "UsbStorageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/status/UsbStorageActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/UsbStorageActivity;


# direct methods
.method constructor <init>(Lcom/android/server/status/UsbStorageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/server/status/UsbStorageActivity$3;->this$0:Lcom/android/server/status/UsbStorageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/server/status/UsbStorageActivity$3;->this$0:Lcom/android/server/status/UsbStorageActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/status/UsbStorageActivity;->access$200(Lcom/android/server/status/UsbStorageActivity;Z)V

    .line 282
    return-void
.end method
