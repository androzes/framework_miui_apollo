.class public Lcom/broadcom/bt/service/bpp/BppObjectResolver;
.super Ljava/lang/Object;
.source "BppObjectResolver.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/broadcom/bt/service/bpp/BppObjectResolver;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mDefaultDir:Ljava/lang/String;

.field mObjectMap:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 160
    new-instance v0, Lcom/broadcom/bt/service/bpp/BppObjectResolver$1;

    invoke-direct {v0}, Lcom/broadcom/bt/service/bpp/BppObjectResolver$1;-><init>()V

    sput-object v0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->readFromParcel(Landroid/os/Parcel;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "defaultDir"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mDefaultDir:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public addDirPathMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "dirPath"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mObjectMap:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mObjectMap:Landroid/os/Bundle;

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mObjectMap:Landroid/os/Bundle;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public addFilePathMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "filePath"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mObjectMap:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mObjectMap:Landroid/os/Bundle;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mObjectMap:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public getMappedPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"

    .prologue
    .line 67
    if-nez p1, :cond_0

    .line 68
    const/4 v1, 0x0

    .line 77
    :goto_0
    return-object v1

    .line 70
    :cond_0
    const/4 v0, 0x0

    .line 71
    .local v0, path:Ljava/lang/String;
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mObjectMap:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mObjectMap:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mDefaultDir:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mDefaultDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v1, v0

    .line 77
    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mDefaultDir:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 152
    .local v0, hasObjectMap:B
    if-lez v0, :cond_0

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mObjectMap:Landroid/os/Bundle;

    .line 155
    :cond_0
    return-void
.end method

.method public setRootDir(Ljava/lang/String;)V
    .locals 0
    .parameter "defaultDir"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mDefaultDir:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mDefaultDir:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mObjectMap:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 142
    :goto_1
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mDefaultDir:Ljava/lang/String;

    goto :goto_0

    .line 139
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 140
    iget-object v0, p0, Lcom/broadcom/bt/service/bpp/BppObjectResolver;->mObjectMap:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    goto :goto_1
.end method
