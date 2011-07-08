.class Lcom/android/settings/InstalledAppDetails$1;
.super Landroid/os/Handler;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/InstalledAppDetails;
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
    .line 126
    iput-object p1, p0, Lcom/android/settings/InstalledAppDetails$1;->this$0:Lcom/android/settings/InstalledAppDetails;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails$1;->this$0:Lcom/android/settings/InstalledAppDetails;

    invoke-virtual {v0}, Lcom/android/settings/InstalledAppDetails;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    :goto_0
    return-void

    .line 131
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 133
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails$1;->this$0:Lcom/android/settings/InstalledAppDetails;

    invoke-static {v0, p1}, Lcom/android/settings/InstalledAppDetails;->access$000(Lcom/android/settings/InstalledAppDetails;Landroid/os/Message;)V

    goto :goto_0

    .line 136
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails$1;->this$0:Lcom/android/settings/InstalledAppDetails;

    invoke-static {v0, p1}, Lcom/android/settings/InstalledAppDetails;->access$100(Lcom/android/settings/InstalledAppDetails;Landroid/os/Message;)V

    goto :goto_0

    .line 140
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails$1;->this$0:Lcom/android/settings/InstalledAppDetails;

    invoke-static {v0}, Lcom/android/settings/InstalledAppDetails;->access$400(Lcom/android/settings/InstalledAppDetails;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/InstalledAppDetails$1;->this$0:Lcom/android/settings/InstalledAppDetails;

    invoke-static {v1}, Lcom/android/settings/InstalledAppDetails;->access$200(Lcom/android/settings/InstalledAppDetails;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/InstalledAppDetails$1;->this$0:Lcom/android/settings/InstalledAppDetails;

    invoke-static {v2}, Lcom/android/settings/InstalledAppDetails;->access$300(Lcom/android/settings/InstalledAppDetails;)Lcom/android/settings/InstalledAppDetails$PkgSizeObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    goto :goto_0

    .line 143
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/InstalledAppDetails$1;->this$0:Lcom/android/settings/InstalledAppDetails;

    invoke-static {v0, p1}, Lcom/android/settings/InstalledAppDetails;->access$500(Lcom/android/settings/InstalledAppDetails;Landroid/os/Message;)V

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
