.class Landroid/location/Criteria$1;
.super Ljava/lang/Object;
.source "Criteria.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/Criteria;
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
        "Landroid/location/Criteria;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/location/Criteria;
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 213
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 214
    .local v0, c:Landroid/location/Criteria;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/Criteria;->access$002(Landroid/location/Criteria;I)I

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/location/Criteria;->access$102(Landroid/location/Criteria;I)I

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    :goto_0
    invoke-static {v0, v1}, Landroid/location/Criteria;->access$202(Landroid/location/Criteria;Z)Z

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    :goto_1
    invoke-static {v0, v1}, Landroid/location/Criteria;->access$302(Landroid/location/Criteria;Z)Z

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    :goto_2
    invoke-static {v0, v1}, Landroid/location/Criteria;->access$402(Landroid/location/Criteria;Z)Z

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    :goto_3
    invoke-static {v0, v1}, Landroid/location/Criteria;->access$502(Landroid/location/Criteria;Z)Z

    .line 221
    return-object v0

    :cond_0
    move v1, v2

    .line 217
    goto :goto_0

    :cond_1
    move v1, v2

    .line 218
    goto :goto_1

    :cond_2
    move v1, v2

    .line 219
    goto :goto_2

    :cond_3
    move v1, v2

    .line 220
    goto :goto_3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Landroid/location/Criteria$1;->createFromParcel(Landroid/os/Parcel;)Landroid/location/Criteria;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/location/Criteria;
    .locals 1
    .parameter "size"

    .prologue
    .line 225
    new-array v0, p1, [Landroid/location/Criteria;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 224
    invoke-virtual {p0, p1}, Landroid/location/Criteria$1;->newArray(I)[Landroid/location/Criteria;

    move-result-object v0

    return-object v0
.end method
