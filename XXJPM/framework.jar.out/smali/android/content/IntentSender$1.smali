.class Landroid/content/IntentSender$1;
.super Ljava/lang/Object;
.source "IntentSender.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IntentSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/content/IntentSender;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/IntentSender;
    .locals 2
    .parameter "in"

    .prologue
    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 214
    .local v0, target:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/IntentSender;

    invoke-direct {v1, v0}, Landroid/content/IntentSender;-><init>(Landroid/os/IBinder;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Landroid/content/IntentSender$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/IntentSender;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/content/IntentSender;
    .locals 1
    .parameter "size"

    .prologue
    .line 218
    new-array v0, p1, [Landroid/content/IntentSender;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 217
    invoke-virtual {p0, p1}, Landroid/content/IntentSender$1;->newArray(I)[Landroid/content/IntentSender;

    move-result-object v0

    return-object v0
.end method
