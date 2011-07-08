.class Lcom/android/server/MountService$VolumeList;
.super Ljava/lang/Object;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VolumeList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MountService$VolumeList$VolumeInfo;
    }
.end annotation


# static fields
.field public static final NotMatch:I = -0x1


# instance fields
.field public final targeting_asec_path:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/MountService;

.field private volumeinfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$VolumeList$VolumeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 4
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/server/MountService$VolumeList;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    .line 160
    invoke-static {}, Landroid/os/Environment;->getInstalledStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MountService$VolumeList;->targeting_asec_path:Ljava/lang/String;

    .line 146
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interal sdcard path :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/MountService$VolumeList$VolumeInfo;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "removed"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/MountService$VolumeList$VolumeInfo;-><init>(Lcom/android/server/MountService$VolumeList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    return-void
.end method

.method private final vaildVolumePath(Ljava/lang/String;)I
    .locals 2
    .parameter "path"

    .prologue
    .line 185
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 186
    iget-object v1, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/MountService$VolumeList$VolumeInfo;

    iget-object v1, v1, Lcom/android/server/MountService$VolumeList$VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 189
    :goto_1
    return v1

    .line 185
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public final getASECMountPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    const-string v0, "ASEC_MOUNTPOINT"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 202
    const/4 v0, -0x1

    .line 203
    .local v0, index:I
    invoke-direct {p0, p1}, Lcom/android/server/MountService$VolumeList;->vaildVolumePath(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;

    iget-object v1, p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;->LegacyState:Ljava/lang/String;

    .line 206
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isASECMounted()Z
    .locals 2

    .prologue
    .line 169
    iget-object v1, p0, Lcom/android/server/MountService$VolumeList;->this$0:Lcom/android/server/MountService;

    invoke-static {v1}, Lcom/android/server/MountService;->access$000(Lcom/android/server/MountService;)Lcom/android/server/MountService$VolumeList;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/MountService$VolumeList;->targeting_asec_path:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/MountService$VolumeList;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, state:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    const/4 v1, 0x1

    .line 174
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isVaildVolumePath(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 178
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/MountService$VolumeList$VolumeInfo;

    iget-object v1, v1, Lcom/android/server/MountService$VolumeList$VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 181
    :goto_1
    return v1

    .line 178
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public updateVolumeState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "path"
    .parameter "LegacyState"

    .prologue
    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, index:I
    invoke-direct {p0, p1}, Lcom/android/server/MountService$VolumeList;->vaildVolumePath(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;

    iput-object p2, p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;->LegacyState:Ljava/lang/String;

    .line 196
    const/4 v1, 0x1

    .line 198
    :goto_0
    return v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
