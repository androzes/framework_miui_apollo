.class Lcom/android/server/PackageManagerService$GrantedPermissions;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GrantedPermissions"
.end annotation


# instance fields
.field gids:[I

.field grantedPermissions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field pkgFlags:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter "pkgFlags"

    .prologue
    .line 7660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7657
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageManagerService$GrantedPermissions;->grantedPermissions:Ljava/util/HashSet;

    .line 7661
    invoke-virtual {p0, p1}, Lcom/android/server/PackageManagerService$GrantedPermissions;->setFlags(I)V

    .line 7662
    return-void
.end method


# virtual methods
.method setFlags(I)V
    .locals 1
    .parameter "pkgFlags"

    .prologue
    .line 7665
    const v0, 0x140001

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/PackageManagerService$GrantedPermissions;->pkgFlags:I

    .line 7669
    return-void
.end method
