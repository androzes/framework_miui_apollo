.class Lcom/android/settings/ManageApplications$AppInfo;
.super Ljava/lang/Object;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppInfo"
.end annotation


# instance fields
.field public appIcon:Landroid/graphics/drawable/Drawable;

.field public appName:Ljava/lang/CharSequence;

.field public appSize:Ljava/lang/CharSequence;

.field index:I

.field public pkgName:Ljava/lang/String;

.field size:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/CharSequence;JLjava/lang/CharSequence;)V
    .locals 8
    .parameter "pName"
    .parameter "pIndex"
    .parameter "aName"
    .parameter "pSize"
    .parameter "pSizeStr"

    .prologue
    .line 929
    invoke-static {}, Lcom/android/settings/ManageApplications;->access$2800()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/ManageApplications$AppInfo;-><init>(Ljava/lang/String;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;JLjava/lang/CharSequence;)V

    .line 930
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;JLjava/lang/CharSequence;)V
    .locals 0
    .parameter "pName"
    .parameter "pIndex"
    .parameter "aName"
    .parameter "aIcon"
    .parameter "pSize"
    .parameter "pSizeStr"

    .prologue
    .line 934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 935
    iput p2, p0, Lcom/android/settings/ManageApplications$AppInfo;->index:I

    .line 936
    iput-object p1, p0, Lcom/android/settings/ManageApplications$AppInfo;->pkgName:Ljava/lang/String;

    .line 937
    iput-object p3, p0, Lcom/android/settings/ManageApplications$AppInfo;->appName:Ljava/lang/CharSequence;

    .line 938
    iput-object p4, p0, Lcom/android/settings/ManageApplications$AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 939
    iput-wide p5, p0, Lcom/android/settings/ManageApplications$AppInfo;->size:J

    .line 940
    iput-object p7, p0, Lcom/android/settings/ManageApplications$AppInfo;->appSize:Ljava/lang/CharSequence;

    .line 941
    return-void
.end method


# virtual methods
.method public refreshIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 914
    if-nez p1, :cond_0

    .line 918
    :goto_0
    return-void

    .line 917
    :cond_0
    iput-object p1, p0, Lcom/android/settings/ManageApplications$AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public refreshLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 920
    if-nez p1, :cond_0

    .line 924
    :goto_0
    return-void

    .line 923
    :cond_0
    iput-object p1, p0, Lcom/android/settings/ManageApplications$AppInfo;->appName:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setSize(JLjava/lang/String;)Z
    .locals 2
    .parameter "newSize"
    .parameter "formattedSize"

    .prologue
    .line 944
    iget-wide v0, p0, Lcom/android/settings/ManageApplications$AppInfo;->size:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 945
    iput-wide p1, p0, Lcom/android/settings/ManageApplications$AppInfo;->size:J

    .line 946
    iput-object p3, p0, Lcom/android/settings/ManageApplications$AppInfo;->appSize:Ljava/lang/CharSequence;

    .line 947
    const/4 v0, 0x1

    .line 949
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
