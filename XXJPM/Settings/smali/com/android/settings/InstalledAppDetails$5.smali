.class Lcom/android/settings/InstalledAppDetails$5;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/InstalledAppDetails;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/InstalledAppDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 640
    iput-object p1, p0, Lcom/android/settings/InstalledAppDetails$5;->this$0:Lcom/android/settings/InstalledAppDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x0

    .line 641
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails$5;->this$0:Lcom/android/settings/InstalledAppDetails;

    invoke-static {v0}, Lcom/android/settings/InstalledAppDetails;->access$1000(Lcom/android/settings/InstalledAppDetails;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 643
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails$5;->this$0:Lcom/android/settings/InstalledAppDetails;

    invoke-static {v0, v1, v1}, Lcom/android/settings/InstalledAppDetails;->access$900(Lcom/android/settings/InstalledAppDetails;ZZ)V

    .line 644
    return-void
.end method
