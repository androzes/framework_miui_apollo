.class Lcom/android/settings/InstalledAppDetails$6;
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
    .line 654
    iput-object p1, p0, Lcom/android/settings/InstalledAppDetails$6;->this$0:Lcom/android/settings/InstalledAppDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 656
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails$6;->this$0:Lcom/android/settings/InstalledAppDetails;

    iget-object v1, p0, Lcom/android/settings/InstalledAppDetails$6;->this$0:Lcom/android/settings/InstalledAppDetails;

    invoke-static {v1}, Lcom/android/settings/InstalledAppDetails;->access$200(Lcom/android/settings/InstalledAppDetails;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/InstalledAppDetails;->access$1100(Lcom/android/settings/InstalledAppDetails;Ljava/lang/String;)V

    .line 657
    return-void
.end method
