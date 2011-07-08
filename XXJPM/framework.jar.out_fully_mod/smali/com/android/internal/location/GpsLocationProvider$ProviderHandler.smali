.class final Lcom/android/internal/location/GpsLocationProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/location/GpsLocationProvider;


# direct methods
.method private constructor <init>(Lcom/android/internal/location/GpsLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 2211
    iput-object p1, p0, Lcom/android/internal/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/location/GpsLocationProvider;Lcom/android/internal/location/GpsLocationProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2211
    invoke-direct {p0, p1}, Lcom/android/internal/location/GpsLocationProvider$ProviderHandler;-><init>(Lcom/android/internal/location/GpsLocationProvider;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 2215
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2247
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 2217
    .restart local p0
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_1

    .line 2218
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$7400(Lcom/android/internal/location/GpsLocationProvider;)V

    goto :goto_0

    .line 2220
    :cond_1
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$7500(Lcom/android/internal/location/GpsLocationProvider;)V

    goto :goto_0

    .line 2224
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    invoke-static {v0, v1}, Lcom/android/internal/location/GpsLocationProvider;->access$7600(Lcom/android/internal/location/GpsLocationProvider;Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 2227
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/net/NetworkInfo;

    invoke-static {v0, v1, p0}, Lcom/android/internal/location/GpsLocationProvider;->access$7700(Lcom/android/internal/location/GpsLocationProvider;ILandroid/net/NetworkInfo;)V

    goto :goto_0

    .line 2230
    .restart local p0
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$7800(Lcom/android/internal/location/GpsLocationProvider;)V

    goto :goto_0

    .line 2233
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$7900(Lcom/android/internal/location/GpsLocationProvider;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2234
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    invoke-static {v0}, Lcom/android/internal/location/GpsLocationProvider;->access$8000(Lcom/android/internal/location/GpsLocationProvider;)V

    goto :goto_0

    .line 2238
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/location/Location;

    invoke-static {v0, p0}, Lcom/android/internal/location/GpsLocationProvider;->access$8100(Lcom/android/internal/location/GpsLocationProvider;Landroid/location/Location;)V

    goto :goto_0

    .line 2241
    .restart local p0
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/internal/location/GpsLocationProvider;->access$8200(Lcom/android/internal/location/GpsLocationProvider;I)V

    goto :goto_0

    .line 2244
    :pswitch_7
    iget-object v0, p0, Lcom/android/internal/location/GpsLocationProvider$ProviderHandler;->this$0:Lcom/android/internal/location/GpsLocationProvider;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/internal/location/GpsLocationProvider;->access$8300(Lcom/android/internal/location/GpsLocationProvider;I)V

    goto :goto_0

    .line 2215
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
