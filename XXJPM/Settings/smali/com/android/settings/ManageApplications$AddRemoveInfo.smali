.class Lcom/android/settings/ManageApplications$AddRemoveInfo;
.super Ljava/lang/Object;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AddRemoveInfo"
.end annotation


# instance fields
.field add:Z

.field pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "pPkgName"
    .parameter "pAdd"

    .prologue
    .line 824
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 825
    iput-object p1, p0, Lcom/android/settings/ManageApplications$AddRemoveInfo;->pkgName:Ljava/lang/String;

    .line 826
    iput-boolean p2, p0, Lcom/android/settings/ManageApplications$AddRemoveInfo;->add:Z

    .line 827
    return-void
.end method
