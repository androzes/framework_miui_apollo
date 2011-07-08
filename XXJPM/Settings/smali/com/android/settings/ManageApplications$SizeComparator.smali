.class Lcom/android/settings/ManageApplications$SizeComparator;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SizeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/settings/ManageApplications;)V
    .locals 0
    .parameter

    .prologue
    .line 1971
    iput-object p1, p0, Lcom/android/settings/ManageApplications$SizeComparator;->this$0:Lcom/android/settings/ManageApplications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I
    .locals 12
    .parameter "a"
    .parameter "b"

    .prologue
    const-wide/16 v10, 0x0

    .line 1973
    iget-object v8, p0, Lcom/android/settings/ManageApplications$SizeComparator;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v8}, Lcom/android/settings/ManageApplications;->access$1500(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoCache;

    move-result-object v8

    iget-object v9, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/settings/ManageApplications$AppInfoCache;->access$2600(Lcom/android/settings/ManageApplications$AppInfoCache;Ljava/lang/String;)Lcom/android/settings/ManageApplications$AppInfo;

    move-result-object v0

    .line 1974
    .local v0, ainfo:Lcom/android/settings/ManageApplications$AppInfo;
    iget-object v8, p0, Lcom/android/settings/ManageApplications$SizeComparator;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v8}, Lcom/android/settings/ManageApplications;->access$1500(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoCache;

    move-result-object v8

    iget-object v9, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/android/settings/ManageApplications$AppInfoCache;->access$2600(Lcom/android/settings/ManageApplications$AppInfoCache;Ljava/lang/String;)Lcom/android/settings/ManageApplications$AppInfo;

    move-result-object v3

    .line 1975
    .local v3, binfo:Lcom/android/settings/ManageApplications$AppInfo;
    iget-wide v1, v0, Lcom/android/settings/ManageApplications$AppInfo;->size:J

    .line 1976
    .local v1, atotal:J
    iget-wide v4, v3, Lcom/android/settings/ManageApplications$AppInfo;->size:J

    .line 1977
    .local v4, btotal:J
    sub-long v6, v1, v4

    .line 1979
    .local v6, ret:J
    cmp-long v8, v6, v10

    if-gez v8, :cond_0

    .line 1980
    const/4 v8, 0x1

    .line 1985
    :goto_0
    return v8

    .line 1982
    :cond_0
    cmp-long v8, v6, v10

    if-nez v8, :cond_1

    .line 1983
    const/4 v8, 0x0

    goto :goto_0

    .line 1985
    :cond_1
    const/4 v8, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1971
    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .end local p1
    check-cast p2, Landroid/content/pm/ApplicationInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/ManageApplications$SizeComparator;->compare(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ApplicationInfo;)I

    move-result v0

    return v0
.end method
