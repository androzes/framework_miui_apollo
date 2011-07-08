.class public Landroid/content/pm/PackageParser;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/PackageParser$ServiceIntentInfo;,
        Landroid/content/pm/PackageParser$ActivityIntentInfo;,
        Landroid/content/pm/PackageParser$IntentInfo;,
        Landroid/content/pm/PackageParser$Instrumentation;,
        Landroid/content/pm/PackageParser$Provider;,
        Landroid/content/pm/PackageParser$Service;,
        Landroid/content/pm/PackageParser$Activity;,
        Landroid/content/pm/PackageParser$PermissionGroup;,
        Landroid/content/pm/PackageParser$Permission;,
        Landroid/content/pm/PackageParser$Component;,
        Landroid/content/pm/PackageParser$Package;,
        Landroid/content/pm/PackageParser$PackageLite;,
        Landroid/content/pm/PackageParser$ParseComponentArgs;,
        Landroid/content/pm/PackageParser$ParsePackageItemArgs;,
        Landroid/content/pm/PackageParser$NewPermissionInfo;
    }
.end annotation


# static fields
.field private static final ANDROID_RESOURCES:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field public static final NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo; = null

.field public static final PARSE_CHATTY:I = 0x2

.field private static final PARSE_DEFAULT_INSTALL_LOCATION:I = -0x1

.field public static final PARSE_FORWARD_LOCK:I = 0x10

.field public static final PARSE_IGNORE_PROCESSES:I = 0x8

.field public static final PARSE_IS_SYSTEM:I = 0x1

.field public static final PARSE_IS_SYSTEM_DIR:I = 0x40

.field public static final PARSE_MUST_BE_APK:I = 0x4

.field public static final PARSE_ON_SDCARD:I = 0x20

.field private static final RIGID_PARSER:Z = false

.field private static final SDK_CODENAME:Ljava/lang/String; = null

#the value of this static final field might be set in the static constructor
.field private static final SDK_VERSION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "PackageParser"

.field private static mReadBuffer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<[B>;"
        }
    .end annotation
.end field

.field private static final mSync:Ljava/lang/Object;

.field private static sCompatibilityModeEnabled:Z


# instance fields
.field private mArchiveSourcePath:Ljava/lang/String;

.field private mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseError:I

.field private mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

.field private mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

.field private mSeparateProcesses:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/content/pm/PackageParser$NewPermissionInfo;

    new-instance v1, Landroid/content/pm/PackageParser$NewPermissionInfo;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-direct {v1, v2, v5, v3}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Landroid/content/pm/PackageParser$NewPermissionInfo;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-direct {v1, v2, v5, v3}, Landroid/content/pm/PackageParser$NewPermissionInfo;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v4

    sput-object v0, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    .line 90
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    .line 91
    const-string v0, "REL"

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-object v0, Landroid/content/pm/PackageParser;->SDK_CODENAME:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParser;->mSync:Ljava/lang/Object;

    .line 99
    sput-boolean v4, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    return-void

    .line 91
    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "archiveSourcePath"

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x1

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 169
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 170
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 60
    invoke-static {p0, p1, p2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 60
    invoke-static/range {p0 .. p5}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "pkg"
    .parameter "clsSeq"
    .parameter "outError"

    .prologue
    const/4 v6, 0x0

    const/16 v4, 0x2e

    const/4 v5, 0x0

    .line 1151
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .line 1152
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Empty class name in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v5

    move-object v3, v6

    .line 1170
    :goto_0
    return-object v3

    .line 1155
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1156
    .local v2, cls:Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1157
    .local v1, c:C
    if-ne v1, v4, :cond_2

    .line 1158
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1160
    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_3

    .line 1161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1162
    .local v0, b:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1163
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1166
    .end local v0           #b:Ljava/lang/StringBuilder;
    :cond_3
    const/16 v3, 0x61

    if-lt v1, v3, :cond_4

    const/16 v3, 0x7a

    if-gt v1, v3, :cond_4

    .line 1167
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1169
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad class name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v5

    move-object v3, v6

    .line 1170
    goto :goto_0
.end method

.method private static buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "pkg"
    .parameter "procSeq"
    .parameter "type"
    .parameter "outError"

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v9, " name "

    const-string v8, " in package "

    .line 1175
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1176
    .local v2, proc:Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1177
    .local v0, c:C
    if-eqz p0, :cond_2

    const/16 v4, 0x3a

    if-ne v0, v4, :cond_2

    .line 1178
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    .line 1179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": must be at least two characters"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v6

    move-object v4, v7

    .line 1198
    :goto_0
    return-object v4

    .line 1183
    :cond_0
    invoke-virtual {v2, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1184
    .local v3, subName:Ljava/lang/String;
    invoke-static {v3, v6}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1185
    .local v1, nameError:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v6

    move-object v4, v7

    .line 1188
    goto :goto_0

    .line 1190
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1192
    .end local v1           #nameError:Ljava/lang/String;
    .end local v3           #subName:Ljava/lang/String;
    :cond_2
    invoke-static {v2, v10}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1193
    .restart local v1       #nameError:Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string/jumbo v4, "system"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1194
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p3, v6

    move-object v4, v7

    .line 1196
    goto/16 :goto_0

    .line 1198
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0
.end method

.method private static buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "pkg"
    .parameter "defProc"
    .parameter "procSeq"
    .parameter "flags"
    .parameter "separateProcesses"
    .parameter "outError"

    .prologue
    .line 1204
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_1

    const-string/jumbo v2, "system"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1205
    if-eqz p1, :cond_0

    move-object v2, p1

    .line 1218
    :goto_0
    return-object v2

    :cond_0
    move-object v2, p0

    .line 1205
    goto :goto_0

    .line 1207
    :cond_1
    if-eqz p4, :cond_4

    .line 1208
    array-length v2, p4

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_4

    .line 1209
    aget-object v1, p4, v0

    .line 1210
    .local v1, sp:Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object v2, p0

    .line 1211
    goto :goto_0

    .line 1208
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1215
    .end local v0           #i:I
    .end local v1           #sp:Ljava/lang/String;
    :cond_4
    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-gtz v2, :cond_6

    :cond_5
    move-object v2, p1

    .line 1216
    goto :goto_0

    .line 1218
    :cond_6
    const-string v2, "process"

    invoke-static {p0, p2, v2, p5}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "pkg"
    .parameter "defProc"
    .parameter "procSeq"
    .parameter "outError"

    .prologue
    .line 1223
    if-nez p2, :cond_0

    move-object v0, p1

    .line 1229
    :goto_0
    return-object v0

    .line 1226
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 1227
    const/4 v0, 0x0

    goto :goto_0

    .line 1229
    :cond_1
    const-string/jumbo v0, "taskAffinity"

    invoke-static {p0, p2, v0, p3}, Landroid/content/pm/PackageParser;->buildCompoundName(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/os/Bundle;)Z
    .locals 2
    .parameter "flags"
    .parameter "p"
    .parameter "metaData"

    .prologue
    const/4 v1, 0x1

    .line 2930
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 2938
    :goto_0
    return v0

    .line 2934
    :cond_1
    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    if-eqz v0, :cond_2

    move v0, v1

    .line 2936
    goto :goto_0

    .line 2938
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final generateActivityInfo(Landroid/content/pm/PackageParser$Activity;I)Landroid/content/pm/ActivityInfo;
    .locals 3
    .parameter "a"
    .parameter "flags"

    .prologue
    .line 3011
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 3019
    :goto_0
    return-object v1

    .line 3012
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v1, v2}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3013
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    .line 3016
    :cond_1
    new-instance v0, Landroid/content/pm/ActivityInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    .line 3017
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 3018
    iget-object v1, p0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v1, v0

    .line 3019
    goto :goto_0
.end method

.method public static generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;
    .locals 2
    .parameter "p"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 2942
    if-nez p0, :cond_0

    .line 2963
    :goto_0
    return-object v1

    .line 2943
    :cond_0
    invoke-static {p1, p0, v1}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2946
    sget-boolean v1, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    if-nez v1, :cond_1

    .line 2947
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    .line 2949
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    .line 2953
    :cond_2
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 2954
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_3

    .line 2955
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 2957
    :cond_3
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_4

    .line 2958
    iget-object v1, p0, Landroid/content/pm/PackageParser$Package;->usesLibraryFiles:[Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 2960
    :cond_4
    sget-boolean v1, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    if-nez v1, :cond_5

    .line 2961
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->disableCompatibilityMode()V

    :cond_5
    move-object v1, v0

    .line 2963
    goto :goto_0
.end method

.method public static final generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;
    .locals 2
    .parameter "i"
    .parameter "flags"

    .prologue
    .line 3124
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 3130
    :goto_0
    return-object v1

    .line 3125
    :cond_0
    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_1

    .line 3126
    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    goto :goto_0

    .line 3128
    :cond_1
    new-instance v0, Landroid/content/pm/InstrumentationInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/InstrumentationInfo;-><init>(Landroid/content/pm/InstrumentationInfo;)V

    .line 3129
    .local v0, ii:Landroid/content/pm/InstrumentationInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Instrumentation;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/InstrumentationInfo;->metaData:Landroid/os/Bundle;

    move-object v1, v0

    .line 3130
    goto :goto_0
.end method

.method public static generatePackageInfo(Landroid/content/pm/PackageParser$Package;[II)Landroid/content/pm/PackageInfo;
    .locals 12
    .parameter "p"
    .parameter "gids"
    .parameter "flags"

    .prologue
    const/4 v11, 0x0

    .line 189
    new-instance v6, Landroid/content/pm/PackageInfo;

    invoke-direct {v6}, Landroid/content/pm/PackageInfo;-><init>()V

    .line 190
    .local v6, pi:Landroid/content/pm/PackageInfo;
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v9, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 191
    iget v9, p0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v9, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 192
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v9, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 193
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    iput-object v9, v6, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    .line 194
    iget v9, p0, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    iput v9, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    .line 195
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 196
    iget v9, p0, Landroid/content/pm/PackageParser$Package;->installLocation:I

    iput v9, v6, Landroid/content/pm/PackageInfo;->installLocation:I

    .line 197
    and-int/lit16 v9, p2, 0x100

    if-eqz v9, :cond_0

    .line 198
    iput-object p1, v6, Landroid/content/pm/PackageInfo;->gids:[I

    .line 200
    :cond_0
    and-int/lit16 v9, p2, 0x4000

    if-eqz v9, :cond_2

    .line 201
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 202
    .local v0, N:I
    if-lez v0, :cond_1

    .line 203
    new-array v9, v0, [Landroid/content/pm/ConfigurationInfo;

    iput-object v9, v6, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    .line 204
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    iget-object v10, v6, Landroid/content/pm/PackageInfo;->configPreferences:[Landroid/content/pm/ConfigurationInfo;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 206
    :cond_1
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    if-eqz v9, :cond_4

    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v0, v9

    .line 207
    :goto_0
    if-lez v0, :cond_2

    .line 208
    new-array v9, v0, [Landroid/content/pm/FeatureInfo;

    iput-object v9, v6, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    .line 209
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    iget-object v10, v6, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 212
    .end local v0           #N:I
    :cond_2
    and-int/lit8 v9, p2, 0x1

    if-eqz v9, :cond_8

    .line 213
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 214
    .restart local v0       #N:I
    if-lez v0, :cond_8

    .line 215
    and-int/lit16 v9, p2, 0x200

    if-eqz v9, :cond_5

    .line 216
    new-array v9, v0, [Landroid/content/pm/ActivityInfo;

    iput-object v9, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .line 224
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    const/4 v3, 0x0

    .local v3, j:I
    move v4, v3

    .end local v3           #j:I
    .local v4, j:I
    :goto_2
    if-ge v2, v0, :cond_8

    .line 225
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 226
    .local v1, activity:Landroid/content/pm/PackageParser$Activity;
    iget-object v9, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v9, v9, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-nez v9, :cond_3

    and-int/lit16 v9, p2, 0x200

    if-eqz v9, :cond_20

    .line 228
    :cond_3
    iget-object v10, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageParser$Activity;

    invoke-static {v9, p2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;I)Landroid/content/pm/ActivityInfo;

    move-result-object v9

    aput-object v9, v10, v4

    .line 224
    :goto_3
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3           #j:I
    .restart local v4       #j:I
    goto :goto_2

    .end local v1           #activity:Landroid/content/pm/PackageParser$Activity;
    .end local v2           #i:I
    .end local v4           #j:I
    :cond_4
    move v0, v11

    .line 206
    goto :goto_0

    .line 218
    :cond_5
    const/4 v5, 0x0

    .line 219
    .local v5, num:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    if-ge v2, v0, :cond_7

    .line 220
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageParser$Activity;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v9, v9, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v9, :cond_6

    add-int/lit8 v5, v5, 0x1

    .line 219
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 222
    :cond_7
    new-array v9, v5, [Landroid/content/pm/ActivityInfo;

    iput-object v9, v6, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    goto :goto_1

    .line 233
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v5           #num:I
    :cond_8
    and-int/lit8 v9, p2, 0x2

    if-eqz v9, :cond_d

    .line 234
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 235
    .restart local v0       #N:I
    if-lez v0, :cond_d

    .line 236
    and-int/lit16 v9, p2, 0x200

    if-eqz v9, :cond_a

    .line 237
    new-array v9, v0, [Landroid/content/pm/ActivityInfo;

    iput-object v9, v6, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    .line 245
    :goto_5
    const/4 v2, 0x0

    .restart local v2       #i:I
    const/4 v3, 0x0

    .restart local v3       #j:I
    move v4, v3

    .end local v3           #j:I
    .restart local v4       #j:I
    :goto_6
    if-ge v2, v0, :cond_d

    .line 246
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    .line 247
    .restart local v1       #activity:Landroid/content/pm/PackageParser$Activity;
    iget-object v9, v1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v9, v9, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-nez v9, :cond_9

    and-int/lit16 v9, p2, 0x200

    if-eqz v9, :cond_1f

    .line 249
    :cond_9
    iget-object v10, v6, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageParser$Activity;

    invoke-static {v9, p2}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;I)Landroid/content/pm/ActivityInfo;

    move-result-object v9

    aput-object v9, v10, v4

    .line 245
    :goto_7
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3           #j:I
    .restart local v4       #j:I
    goto :goto_6

    .line 239
    .end local v1           #activity:Landroid/content/pm/PackageParser$Activity;
    .end local v2           #i:I
    .end local v4           #j:I
    :cond_a
    const/4 v5, 0x0

    .line 240
    .restart local v5       #num:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_8
    if-ge v2, v0, :cond_c

    .line 241
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageParser$Activity;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-boolean v9, v9, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-eqz v9, :cond_b

    add-int/lit8 v5, v5, 0x1

    .line 240
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 243
    :cond_c
    new-array v9, v5, [Landroid/content/pm/ActivityInfo;

    iput-object v9, v6, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    goto :goto_5

    .line 254
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v5           #num:I
    :cond_d
    and-int/lit8 v9, p2, 0x4

    if-eqz v9, :cond_12

    .line 255
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 256
    .restart local v0       #N:I
    if-lez v0, :cond_12

    .line 257
    and-int/lit16 v9, p2, 0x200

    if-eqz v9, :cond_f

    .line 258
    new-array v9, v0, [Landroid/content/pm/ServiceInfo;

    iput-object v9, v6, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 266
    :goto_9
    const/4 v2, 0x0

    .restart local v2       #i:I
    const/4 v3, 0x0

    .restart local v3       #j:I
    move v4, v3

    .end local v3           #j:I
    .restart local v4       #j:I
    :goto_a
    if-ge v2, v0, :cond_12

    .line 267
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageParser$Service;

    .line 268
    .local v8, service:Landroid/content/pm/PackageParser$Service;
    iget-object v9, v8, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-boolean v9, v9, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-nez v9, :cond_e

    and-int/lit16 v9, p2, 0x200

    if-eqz v9, :cond_1e

    .line 270
    :cond_e
    iget-object v10, v6, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageParser$Service;

    invoke-static {v9, p2}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;I)Landroid/content/pm/ServiceInfo;

    move-result-object v9

    aput-object v9, v10, v4

    .line 266
    :goto_b
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3           #j:I
    .restart local v4       #j:I
    goto :goto_a

    .line 260
    .end local v2           #i:I
    .end local v4           #j:I
    .end local v8           #service:Landroid/content/pm/PackageParser$Service;
    :cond_f
    const/4 v5, 0x0

    .line 261
    .restart local v5       #num:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_c
    if-ge v2, v0, :cond_11

    .line 262
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageParser$Service;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-boolean v9, v9, Landroid/content/pm/ServiceInfo;->enabled:Z

    if-eqz v9, :cond_10

    add-int/lit8 v5, v5, 0x1

    .line 261
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 264
    :cond_11
    new-array v9, v5, [Landroid/content/pm/ServiceInfo;

    iput-object v9, v6, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    goto :goto_9

    .line 275
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v5           #num:I
    :cond_12
    and-int/lit8 v9, p2, 0x8

    if-eqz v9, :cond_17

    .line 276
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 277
    .restart local v0       #N:I
    if-lez v0, :cond_17

    .line 278
    and-int/lit16 v9, p2, 0x200

    if-eqz v9, :cond_14

    .line 279
    new-array v9, v0, [Landroid/content/pm/ProviderInfo;

    iput-object v9, v6, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    .line 287
    :goto_d
    const/4 v2, 0x0

    .restart local v2       #i:I
    const/4 v3, 0x0

    .restart local v3       #j:I
    move v4, v3

    .end local v3           #j:I
    .restart local v4       #j:I
    :goto_e
    if-ge v2, v0, :cond_17

    .line 288
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/PackageParser$Provider;

    .line 289
    .local v7, provider:Landroid/content/pm/PackageParser$Provider;
    iget-object v9, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v9, v9, Landroid/content/pm/ProviderInfo;->enabled:Z

    if-nez v9, :cond_13

    and-int/lit16 v9, p2, 0x200

    if-eqz v9, :cond_1d

    .line 291
    :cond_13
    iget-object v10, v6, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    add-int/lit8 v3, v4, 0x1

    .end local v4           #j:I
    .restart local v3       #j:I
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageParser$Provider;

    invoke-static {v9, p2}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;I)Landroid/content/pm/ProviderInfo;

    move-result-object v9

    aput-object v9, v10, v4

    .line 287
    :goto_f
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    .end local v3           #j:I
    .restart local v4       #j:I
    goto :goto_e

    .line 281
    .end local v2           #i:I
    .end local v4           #j:I
    .end local v7           #provider:Landroid/content/pm/PackageParser$Provider;
    :cond_14
    const/4 v5, 0x0

    .line 282
    .restart local v5       #num:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_10
    if-ge v2, v0, :cond_16

    .line 283
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageParser$Provider;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-boolean v9, v9, Landroid/content/pm/ProviderInfo;->enabled:Z

    if-eqz v9, :cond_15

    add-int/lit8 v5, v5, 0x1

    .line 282
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 285
    :cond_16
    new-array v9, v5, [Landroid/content/pm/ProviderInfo;

    iput-object v9, v6, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    goto :goto_d

    .line 296
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v5           #num:I
    :cond_17
    and-int/lit8 v9, p2, 0x10

    if-eqz v9, :cond_18

    .line 297
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 298
    .restart local v0       #N:I
    if-lez v0, :cond_18

    .line 299
    new-array v9, v0, [Landroid/content/pm/InstrumentationInfo;

    iput-object v9, v6, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    .line 300
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_11
    if-ge v2, v0, :cond_18

    .line 301
    iget-object v10, v6, Landroid/content/pm/PackageInfo;->instrumentation:[Landroid/content/pm/InstrumentationInfo;

    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageParser$Instrumentation;

    invoke-static {v9, p2}, Landroid/content/pm/PackageParser;->generateInstrumentationInfo(Landroid/content/pm/PackageParser$Instrumentation;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v9

    aput-object v9, v10, v2

    .line 300
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 306
    .end local v0           #N:I
    .end local v2           #i:I
    :cond_18
    and-int/lit16 v9, p2, 0x1000

    if-eqz v9, :cond_1a

    .line 307
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 308
    .restart local v0       #N:I
    if-lez v0, :cond_19

    .line 309
    new-array v9, v0, [Landroid/content/pm/PermissionInfo;

    iput-object v9, v6, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    .line 310
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_12
    if-ge v2, v0, :cond_19

    .line 311
    iget-object v10, v6, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageParser$Permission;

    invoke-static {v9, p2}, Landroid/content/pm/PackageParser;->generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;

    move-result-object v9

    aput-object v9, v10, v2

    .line 310
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 314
    .end local v2           #i:I
    :cond_19
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 315
    if-lez v0, :cond_1a

    .line 316
    new-array v9, v0, [Ljava/lang/String;

    iput-object v9, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 317
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_13
    if-ge v2, v0, :cond_1a

    .line 318
    iget-object v10, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v10, v2

    .line 317
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 322
    .end local v0           #N:I
    .end local v2           #i:I
    :cond_1a
    and-int/lit8 v9, p2, 0x40

    if-eqz v9, :cond_1b

    .line 323
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    if-eqz v9, :cond_1c

    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    array-length v9, v9

    move v0, v9

    .line 324
    .restart local v0       #N:I
    :goto_14
    if-lez v0, :cond_1b

    .line 325
    new-array v9, v0, [Landroid/content/pm/Signature;

    iput-object v9, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 326
    iget-object v9, p0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    iget-object v10, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-static {v9, v11, v10, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 329
    .end local v0           #N:I
    :cond_1b
    return-object v6

    :cond_1c
    move v0, v11

    .line 323
    goto :goto_14

    .restart local v0       #N:I
    .restart local v2       #i:I
    .restart local v4       #j:I
    .restart local v7       #provider:Landroid/content/pm/PackageParser$Provider;
    :cond_1d
    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto/16 :goto_f

    .end local v3           #j:I
    .end local v7           #provider:Landroid/content/pm/PackageParser$Provider;
    .restart local v4       #j:I
    .restart local v8       #service:Landroid/content/pm/PackageParser$Service;
    :cond_1e
    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto/16 :goto_b

    .end local v3           #j:I
    .end local v8           #service:Landroid/content/pm/PackageParser$Service;
    .restart local v1       #activity:Landroid/content/pm/PackageParser$Activity;
    .restart local v4       #j:I
    :cond_1f
    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto/16 :goto_7

    .end local v3           #j:I
    .restart local v4       #j:I
    :cond_20
    move v3, v4

    .end local v4           #j:I
    .restart local v3       #j:I
    goto/16 :goto_3
.end method

.method public static final generatePermissionGroupInfo(Landroid/content/pm/PackageParser$PermissionGroup;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 2
    .parameter "pg"
    .parameter "flags"

    .prologue
    .line 2979
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 2985
    :goto_0
    return-object v1

    .line 2980
    :cond_0
    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_1

    .line 2981
    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    goto :goto_0

    .line 2983
    :cond_1
    new-instance v0, Landroid/content/pm/PermissionGroupInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionGroupInfo;-><init>(Landroid/content/pm/PermissionGroupInfo;)V

    .line 2984
    .local v0, pgi:Landroid/content/pm/PermissionGroupInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$PermissionGroup;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PermissionGroupInfo;->metaData:Landroid/os/Bundle;

    move-object v1, v0

    .line 2985
    goto :goto_0
.end method

.method public static final generatePermissionInfo(Landroid/content/pm/PackageParser$Permission;I)Landroid/content/pm/PermissionInfo;
    .locals 2
    .parameter "p"
    .parameter "flags"

    .prologue
    .line 2968
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 2974
    :goto_0
    return-object v1

    .line 2969
    :cond_0
    and-int/lit16 v1, p1, 0x80

    if-nez v1, :cond_1

    .line 2970
    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    goto :goto_0

    .line 2972
    :cond_1
    new-instance v0, Landroid/content/pm/PermissionInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/PermissionInfo;-><init>(Landroid/content/pm/PermissionInfo;)V

    .line 2973
    .local v0, pi:Landroid/content/pm/PermissionInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Permission;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/PermissionInfo;->metaData:Landroid/os/Bundle;

    move-object v1, v0

    .line 2974
    goto :goto_0
.end method

.method public static final generateProviderInfo(Landroid/content/pm/PackageParser$Provider;I)Landroid/content/pm/ProviderInfo;
    .locals 4
    .parameter "p"
    .parameter "flags"

    .prologue
    const/4 v3, 0x0

    .line 3086
    if-nez p0, :cond_0

    move-object v1, v3

    .line 3099
    :goto_0
    return-object v1

    .line 3087
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v1, v2}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_2

    and-int/lit16 v1, p1, 0x800

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v1, v1, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-nez v1, :cond_2

    .line 3090
    :cond_1
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    goto :goto_0

    .line 3093
    :cond_2
    new-instance v0, Landroid/content/pm/ProviderInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ProviderInfo;-><init>(Landroid/content/pm/ProviderInfo;)V

    .line 3094
    .local v0, pi:Landroid/content/pm/ProviderInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 3095
    and-int/lit16 v1, p1, 0x800

    if-nez v1, :cond_3

    .line 3096
    iput-object v3, v0, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 3098
    :cond_3
    iget-object v1, p0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v1, v0

    .line 3099
    goto :goto_0
.end method

.method public static final generateServiceInfo(Landroid/content/pm/PackageParser$Service;I)Landroid/content/pm/ServiceInfo;
    .locals 3
    .parameter "s"
    .parameter "flags"

    .prologue
    .line 3044
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 3052
    :goto_0
    return-object v1

    .line 3045
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, p0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    invoke-static {p1, v1, v2}, Landroid/content/pm/PackageParser;->copyNeeded(ILandroid/content/pm/PackageParser$Package;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3046
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    goto :goto_0

    .line 3049
    :cond_1
    new-instance v0, Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, v1}, Landroid/content/pm/ServiceInfo;-><init>(Landroid/content/pm/ServiceInfo;)V

    .line 3050
    .local v0, si:Landroid/content/pm/ServiceInfo;
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 3051
    iget-object v1, p0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    invoke-static {v1, p1}, Landroid/content/pm/PackageParser;->generateApplicationInfo(Landroid/content/pm/PackageParser$Package;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v1, v0

    .line 3052
    goto :goto_0
.end method

.method private static final isPackageFilename(Ljava/lang/String;)Z
    .locals 1
    .parameter "name"

    .prologue
    .line 177
    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .locals 8
    .parameter "jarFile"
    .parameter "je"
    .parameter "readBuffer"

    .prologue
    const/4 v4, 0x0

    const-string v7, "PackageParser"

    const-string v6, "Exception reading "

    const-string v5, " in "

    .line 337
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 338
    .local v1, is:Ljava/io/InputStream;
    :cond_0
    const/4 v2, 0x0

    array-length v3, p3

    invoke-virtual {v1, p3, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 341
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 342
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 350
    .end local v1           #is:Ljava/io/InputStream;
    :goto_0
    return-object v2

    .restart local v1       #is:Ljava/io/InputStream;
    :cond_1
    move-object v2, v4

    .line 342
    goto :goto_0

    .line 343
    .end local v1           #is:Ljava/io/InputStream;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 344
    .local v0, e:Ljava/io/IOException;
    const-string v2, "PackageParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception reading "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #e:Ljava/io/IOException;
    :goto_1
    move-object v2, v4

    .line 350
    goto :goto_0

    .line 346
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 347
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "PackageParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception reading "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;Z)Landroid/content/pm/PackageParser$Activity;
    .locals 22
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outError"
    .parameter "receiver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1740
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestActivity:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v18

    .line 1743
    .local v18, sa:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v4, v0

    if-nez v4, :cond_0

    .line 1744
    new-instance v4, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    move-object v10, v0

    const/4 v11, 0x7

    const/16 v12, 0x11

    const/4 v13, 0x5

    move-object/from16 v5, p1

    move-object/from16 v6, p6

    invoke-direct/range {v4 .. v13}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;III[Ljava/lang/String;III)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 1754
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v4, v0

    if-eqz p7, :cond_1

    const-string v5, "<receiver>"

    :goto_0
    iput-object v5, v4, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 1755
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v4, v0

    move-object/from16 v0, v18

    move-object v1, v4

    iput-object v0, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 1756
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v4, v0

    move/from16 v0, p5

    move-object v1, v4

    iput v0, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 1758
    new-instance v16, Landroid/content/pm/PackageParser$Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v4, v0

    new-instance v5, Landroid/content/pm/ActivityInfo;

    invoke-direct {v5}, Landroid/content/pm/ActivityInfo;-><init>()V

    move-object/from16 v0, v16

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    .line 1759
    .local v16, a:Landroid/content/pm/PackageParser$Activity;
    const/4 v4, 0x0

    aget-object v4, p6, v4

    if-eqz v4, :cond_2

    .line 1760
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    .line 1761
    const/4 v4, 0x0

    .line 1921
    :goto_1
    return-object v4

    .line 1754
    .end local v16           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_1
    const-string v5, "<activity>"

    goto :goto_0

    .line 1764
    .restart local v16       #a:Landroid/content/pm/PackageParser$Activity;
    :cond_2
    const/4 v4, 0x6

    move-object/from16 v0, v18

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v19

    .line 1766
    .local v19, setExported:Z
    if-eqz v19, :cond_3

    .line 1767
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 1771
    :cond_3
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->theme:I

    .line 1775
    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v20

    .line 1777
    .local v20, str:Ljava/lang/String;
    if-nez v20, :cond_d

    .line 1778
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 1783
    :goto_2
    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v20

    .line 1785
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v20

    move-object/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 1788
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1789
    const/16 v4, 0x9

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1792
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1795
    :cond_4
    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1798
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1801
    :cond_5
    const/16 v4, 0xb

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1804
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1807
    :cond_6
    const/16 v4, 0x15

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1810
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1813
    :cond_7
    const/16 v4, 0x12

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1816
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1819
    :cond_8
    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1822
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1825
    :cond_9
    const/16 v4, 0xd

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1828
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1831
    :cond_a
    const/16 v4, 0x13

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_f

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1834
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v5, v5, 0x40

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1837
    :cond_b
    const/16 v4, 0x16

    const/4 v5, 0x0

    move-object/from16 v0, v18

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1840
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    iget v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit16 v5, v5, 0x100

    iput v5, v4, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1843
    :cond_c
    if-nez p7, :cond_10

    .line 1844
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 1847
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/16 v5, 0xf

    const/4 v6, -0x1

    move-object/from16 v0, v18

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 1850
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 1853
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/16 v5, 0x14

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, v4, Landroid/content/pm/ActivityInfo;->softInputMode:I

    .line 1861
    :goto_4
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/TypedArray;->recycle()V

    .line 1863
    const/4 v4, 0x0

    aget-object v4, p6, v4

    if-eqz v4, :cond_11

    .line 1864
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1780
    :cond_d
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_e

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    :goto_5
    iput-object v5, v4, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    goto/16 :goto_2

    :cond_e
    const/4 v5, 0x0

    goto :goto_5

    .line 1831
    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 1857
    :cond_10
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 1858
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    goto :goto_4

    .line 1867
    :cond_11
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    .line 1870
    .local v17, outerDepth:I
    :cond_12
    :goto_6
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v21

    .local v21, type:I
    const/4 v4, 0x1

    move/from16 v0, v21

    move v1, v4

    if-eq v0, v1, :cond_1a

    const/4 v4, 0x3

    move/from16 v0, v21

    move v1, v4

    if-ne v0, v1, :cond_13

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move v0, v4

    move/from16 v1, v17

    if-le v0, v1, :cond_1a

    .line 1872
    :cond_13
    const/4 v4, 0x3

    move/from16 v0, v21

    move v1, v4

    if-eq v0, v1, :cond_12

    const/4 v4, 0x4

    move/from16 v0, v21

    move v1, v4

    if-eq v0, v1, :cond_12

    .line 1876
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "intent-filter"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1877
    new-instance v9, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 1878
    .local v9, intent:Landroid/content/pm/PackageParser$ActivityIntentInfo;
    if-nez p7, :cond_14

    const/4 v4, 0x1

    move v11, v4

    :goto_7
    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v10, p6

    invoke-direct/range {v4 .. v11}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_15

    .line 1879
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1878
    :cond_14
    const/4 v4, 0x0

    move v11, v4

    goto :goto_7

    .line 1881
    :cond_15
    invoke-virtual {v9}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v4

    if-nez v4, :cond_16

    .line 1882
    const-string v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No actions in intent filter at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1886
    :cond_16
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 1888
    .end local v9           #intent:Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_17
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "meta-data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1889
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    move-object v14, v0

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v15, p6

    invoke-direct/range {v10 .. v15}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_12

    .line 1891
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1895
    :cond_18
    const-string v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem in package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1896
    if-eqz p7, :cond_19

    .line 1897
    const-string v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <receiver>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    :goto_8
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_6

    .line 1901
    :cond_19
    const-string v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <activity>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1917
    :cond_1a
    if-nez v19, :cond_1b

    .line 1918
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1c

    const/4 v5, 0x1

    :goto_9
    iput-boolean v5, v4, Landroid/content/pm/ActivityInfo;->exported:Z

    :cond_1b
    move-object/from16 v4, v16

    .line 1921
    goto/16 :goto_1

    .line 1918
    :cond_1c
    const/4 v5, 0x0

    goto :goto_9
.end method

.method private parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;
    .locals 27
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1927
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestActivityAlias:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v20

    .line 1930
    .local v20, sa:Landroid/content/res/TypedArray;
    const/4 v3, 0x7

    const/4 v4, 0x0

    move-object/from16 v0, v20

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v25

    .line 1932
    .local v25, targetActivity:Ljava/lang/String;
    if-nez v25, :cond_0

    .line 1933
    const/4 v3, 0x0

    const-string v4, "<activity-alias> does not specify android:targetActivity"

    aput-object v4, p6, v3

    .line 1934
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 1935
    const/4 v3, 0x0

    .line 2063
    :goto_0
    return-object v3

    .line 1938
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v3, v0

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, v25

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1940
    if-nez v25, :cond_1

    .line 1941
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 1942
    const/4 v3, 0x0

    goto :goto_0

    .line 1945
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    if-nez v3, :cond_2

    .line 1946
    new-instance v3, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    move-object v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x6

    const/4 v12, 0x4

    move-object/from16 v4, p1

    move-object/from16 v5, p6

    invoke-direct/range {v3 .. v12}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;III[Ljava/lang/String;III)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 1954
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    const-string v4, "<activity-alias>"

    iput-object v4, v3, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 1957
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    move-object/from16 v0, v20

    move-object v1, v3

    iput-object v0, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 1958
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    move/from16 v0, p5

    move-object v1, v3

    iput v0, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 1960
    const/16 v24, 0x0

    .line 1962
    .local v24, target:Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 1963
    .local v15, NA:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    move/from16 v0, v17

    move v1, v15

    if-ge v0, v1, :cond_3

    .line 1964
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/PackageParser$Activity;

    .line 1965
    .local v23, t:Landroid/content/pm/PackageParser$Activity;
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v25

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1966
    move-object/from16 v24, v23

    .line 1971
    .end local v23           #t:Landroid/content/pm/PackageParser$Activity;
    :cond_3
    if-nez v24, :cond_5

    .line 1972
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<activity-alias> target activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found in manifest"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p6, v3

    .line 1974
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 1975
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1963
    .restart local v23       #t:Landroid/content/pm/PackageParser$Activity;
    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 1978
    .end local v23           #t:Landroid/content/pm/PackageParser$Activity;
    :cond_5
    new-instance v18, Landroid/content/pm/ActivityInfo;

    invoke-direct/range {v18 .. v18}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 1979
    .local v18, info:Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v25

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 1980
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->configChanges:I

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/ActivityInfo;->configChanges:I

    .line 1981
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1982
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->icon:I

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/ActivityInfo;->icon:I

    .line 1983
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->labelRes:I

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/ActivityInfo;->labelRes:I

    .line 1984
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object v0, v3

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/content/pm/ActivityInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1985
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->launchMode:I

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 1986
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1987
    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    move v3, v0

    if-nez v3, :cond_6

    .line 1988
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/ActivityInfo;->descriptionRes:I

    .line 1990
    :cond_6
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 1991
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 1992
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->theme:I

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/content/pm/ActivityInfo;->theme:I

    .line 1994
    new-instance v16, Landroid/content/pm/PackageParser$Activity;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseActivityAliasArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    move-object/from16 v0, v16

    move-object v1, v3

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$Activity;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ActivityInfo;)V

    .line 1995
    .local v16, a:Landroid/content/pm/PackageParser$Activity;
    const/4 v3, 0x0

    aget-object v3, p6, v3

    if-eqz v3, :cond_7

    .line 1996
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 1997
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2000
    :cond_7
    const/4 v3, 0x5

    move-object/from16 v0, v20

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v21

    .line 2002
    .local v21, setExported:Z
    if-eqz v21, :cond_8

    .line 2003
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object/from16 v0, v20

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 2008
    :cond_8
    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object/from16 v0, v20

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v22

    .line 2010
    .local v22, str:Ljava/lang/String;
    if-eqz v22, :cond_9

    .line 2011
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :goto_2
    iput-object v4, v3, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 2014
    :cond_9
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/TypedArray;->recycle()V

    .line 2016
    const/4 v3, 0x0

    aget-object v3, p6, v3

    if-eqz v3, :cond_b

    .line 2017
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2011
    :cond_a
    const/4 v4, 0x0

    goto :goto_2

    .line 2020
    :cond_b
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v19

    .line 2023
    .local v19, outerDepth:I
    :cond_c
    :goto_3
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v26

    .local v26, type:I
    const/4 v3, 0x1

    move/from16 v0, v26

    move v1, v3

    if-eq v0, v1, :cond_12

    const/4 v3, 0x3

    move/from16 v0, v26

    move v1, v3

    if-ne v0, v1, :cond_d

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    move v0, v3

    move/from16 v1, v19

    if-le v0, v1, :cond_12

    .line 2025
    :cond_d
    const/4 v3, 0x3

    move/from16 v0, v26

    move v1, v3

    if-eq v0, v1, :cond_c

    const/4 v3, 0x4

    move/from16 v0, v26

    move v1, v3

    if-eq v0, v1, :cond_c

    .line 2029
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "intent-filter"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 2030
    new-instance v8, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;-><init>(Landroid/content/pm/PackageParser$Activity;)V

    .line 2031
    .local v8, intent:Landroid/content/pm/PackageParser$ActivityIntentInfo;
    const/4 v10, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v10}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_e

    .line 2032
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2034
    :cond_e
    invoke-virtual {v8}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->countActions()I

    move-result v3

    if-nez v3, :cond_f

    .line 2035
    const-string v3, "PackageParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No actions in intent filter at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2039
    :cond_f
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 2041
    .end local v8           #intent:Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_10
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "meta-data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2042
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    move-object v13, v0

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v14, p6

    invoke-direct/range {v9 .. v14}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/PackageParser$Activity;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_c

    .line 2044
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2048
    :cond_11
    const-string v3, "PackageParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <activity-alias>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_3

    .line 2059
    :cond_12
    if-nez v21, :cond_13

    .line 2060
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_14

    const/4 v4, 0x1

    :goto_4
    iput-boolean v4, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    :cond_13
    move-object/from16 v3, v16

    .line 2063
    goto/16 :goto_0

    .line 2060
    :cond_14
    const/4 v4, 0x0

    goto :goto_4
.end method

.method private parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z
    .locals 8
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "tag"
    .parameter "outInfo"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2419
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 2422
    .local v6, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .local v7, type:I
    const/4 v0, 0x1

    if-eq v7, v0, :cond_3

    const/4 v0, 0x3

    if-ne v7, v0, :cond_1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v6, :cond_3

    .line 2424
    :cond_1
    const/4 v0, 0x3

    if-eq v7, v0, :cond_0

    const/4 v0, 0x4

    if-eq v7, v0, :cond_0

    .line 2428
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "meta-data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2429
    iget-object v4, p5, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p5, Landroid/content/pm/PackageParser$Component;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 2431
    const/4 v0, 0x0

    .line 2446
    :goto_1
    return v0

    .line 2435
    :cond_2
    const-string v0, "PackageParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element under "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 2446
    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private parseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Z
    .locals 32
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1427
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    .line 1428
    .local v16, ai:Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    move-object v0, v4

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 1430
    .local v24, pkgName:Ljava/lang/String;
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestApplication:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 1433
    .local v27, sa:Landroid/content/res/TypedArray;
    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v22

    .line 1435
    .local v22, name:Ljava/lang/String;
    if-eqz v22, :cond_0

    .line 1436
    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 1437
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    move-object v4, v0

    if-nez v4, :cond_0

    .line 1438
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 1439
    const/16 v4, -0x6c

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1440
    const/4 v4, 0x0

    .line 1703
    :goto_0
    return v4

    .line 1444
    :cond_0
    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v21

    .line 1446
    .local v21, manageSpaceActivity:Ljava/lang/String;
    if-eqz v21, :cond_1

    .line 1447
    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 1451
    :cond_1
    const/16 v4, 0x11

    const/4 v5, 0x1

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    .line 1453
    .local v17, allowBackup:Z
    if-eqz v17, :cond_3

    .line 1454
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    const v5, 0x8000

    or-int/2addr v4, v5

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1458
    const/16 v4, 0x10

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v18

    .line 1460
    .local v18, backupAgent:Ljava/lang/String;
    if-eqz v18, :cond_3

    .line 1461
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move-object/from16 v2, p6

    invoke-static {v0, v1, v2}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    .line 1467
    const/16 v4, 0x12

    const/4 v5, 0x1

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1470
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    const/high16 v5, 0x1

    or-int/2addr v4, v5

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1472
    :cond_2
    const/16 v4, 0x15

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1475
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    const/high16 v5, 0x2

    or-int/2addr v4, v5

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1480
    .end local v18           #backupAgent:Ljava/lang/String;
    :cond_3
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v31

    .line 1482
    .local v31, v:Landroid/util/TypedValue;
    if-eqz v31, :cond_4

    move-object/from16 v0, v31

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    move v4, v0

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    if-nez v4, :cond_4

    .line 1483
    invoke-virtual/range {v31 .. v31}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1486
    :cond_4
    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 1488
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 1490
    const/16 v4, 0xd

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->descriptionRes:I

    .line 1493
    and-int/lit8 v4, p5, 0x1

    if-eqz v4, :cond_5

    .line 1494
    const/16 v4, 0x8

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1497
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    or-int/lit8 v4, v4, 0x8

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1501
    :cond_5
    and-int/lit8 v4, p5, 0x10

    if-eqz v4, :cond_6

    .line 1502
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    const/high16 v5, 0x10

    or-int/2addr v4, v5

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1505
    :cond_6
    and-int/lit8 v4, p5, 0x20

    if-eqz v4, :cond_7

    .line 1506
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    const/high16 v5, 0x4

    or-int/2addr v4, v5

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1509
    :cond_7
    const/16 v4, 0xa

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1512
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    or-int/lit8 v4, v4, 0x2

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1515
    :cond_8
    const/16 v4, 0x14

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1518
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    or-int/lit16 v4, v4, 0x4000

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1521
    :cond_9
    const/4 v4, 0x7

    const/4 v5, 0x1

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1524
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    or-int/lit8 v4, v4, 0x4

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1527
    :cond_a
    const/16 v4, 0xe

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1530
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    or-int/lit8 v4, v4, 0x20

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1533
    :cond_b
    const/4 v4, 0x5

    const/4 v5, 0x1

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1536
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    or-int/lit8 v4, v4, 0x40

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1539
    :cond_c
    const/16 v4, 0xf

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1542
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move v4, v0

    or-int/lit16 v4, v4, 0x100

    move v0, v4

    move-object/from16 v1, v16

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1546
    :cond_d
    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v28

    .line 1548
    .local v28, str:Ljava/lang/String;
    if-eqz v28, :cond_f

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_f

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :goto_1
    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    .line 1550
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x8

    if-lt v4, v5, :cond_10

    .line 1551
    const/16 v4, 0xc

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v28

    .line 1560
    :goto_2
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v28

    move-object/from16 v3, p6

    invoke-static {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->buildTaskAffinityName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 1563
    const/4 v4, 0x0

    aget-object v4, p6, v4

    if-nez v4, :cond_e

    .line 1565
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0x8

    if-lt v4, v5, :cond_11

    .line 1566
    const/16 v4, 0xb

    const/4 v5, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v6

    .line 1575
    .local v6, pname:Ljava/lang/CharSequence;
    :goto_3
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    move-object v8, v0

    move/from16 v7, p5

    move-object/from16 v9, p6

    invoke-static/range {v4 .. v9}, Landroid/content/pm/PackageParser;->buildProcessName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;I[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 1578
    const/16 v4, 0x9

    const/4 v5, 0x1

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    move v0, v4

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 1582
    .end local v6           #pname:Ljava/lang/CharSequence;
    :cond_e
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 1584
    const/4 v4, 0x0

    aget-object v4, p6, v4

    if-eqz v4, :cond_12

    .line 1585
    const/16 v4, -0x6c

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1586
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1548
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1557
    :cond_10
    const/16 v4, 0xc

    move-object/from16 v0, v27

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v28

    goto :goto_2

    .line 1572
    :cond_11
    const/16 v4, 0xb

    move-object/from16 v0, v27

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #pname:Ljava/lang/CharSequence;
    goto :goto_3

    .line 1589
    .end local v6           #pname:Ljava/lang/CharSequence;
    :cond_12
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v19

    .line 1593
    .local v19, innerDepth:I
    :cond_13
    :goto_4
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v30

    .local v30, type:I
    const/4 v4, 0x1

    move/from16 v0, v30

    move v1, v4

    if-eq v0, v1, :cond_25

    const/4 v4, 0x3

    move/from16 v0, v30

    move v1, v4

    if-ne v0, v1, :cond_14

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move v0, v4

    move/from16 v1, v19

    if-le v0, v1, :cond_25

    .line 1594
    :cond_14
    const/4 v4, 0x3

    move/from16 v0, v30

    move v1, v4

    if-eq v0, v1, :cond_13

    const/4 v4, 0x4

    move/from16 v0, v30

    move v1, v4

    if-eq v0, v1, :cond_13

    .line 1598
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v29

    .line 1599
    .local v29, tagName:Ljava/lang/String;
    const-string v4, "activity"

    move-object/from16 v0, v29

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1600
    const/4 v14, 0x0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    invoke-direct/range {v7 .. v14}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;Z)Landroid/content/pm/PackageParser$Activity;

    move-result-object v15

    .line 1601
    .local v15, a:Landroid/content/pm/PackageParser$Activity;
    if-nez v15, :cond_15

    .line 1602
    const/16 v4, -0x6c

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1603
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1606
    :cond_15
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1608
    .end local v15           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_16
    const-string v4, "receiver"

    move-object/from16 v0, v29

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1609
    const/4 v14, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    invoke-direct/range {v7 .. v14}, Landroid/content/pm/PackageParser;->parseActivity(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;Z)Landroid/content/pm/PackageParser$Activity;

    move-result-object v15

    .line 1610
    .restart local v15       #a:Landroid/content/pm/PackageParser$Activity;
    if-nez v15, :cond_17

    .line 1611
    const/16 v4, -0x6c

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1612
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1615
    :cond_17
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1617
    .end local v15           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_18
    const-string v4, "service"

    move-object/from16 v0, v29

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1618
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;

    move-result-object v26

    .line 1619
    .local v26, s:Landroid/content/pm/PackageParser$Service;
    if-nez v26, :cond_19

    .line 1620
    const/16 v4, -0x6c

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1621
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1624
    :cond_19
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1626
    .end local v26           #s:Landroid/content/pm/PackageParser$Service;
    :cond_1a
    const-string v4, "provider"

    move-object/from16 v0, v29

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1627
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;

    move-result-object v23

    .line 1628
    .local v23, p:Landroid/content/pm/PackageParser$Provider;
    if-nez v23, :cond_1b

    .line 1629
    const/16 v4, -0x6c

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1630
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1633
    :cond_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1635
    .end local v23           #p:Landroid/content/pm/PackageParser$Provider;
    :cond_1c
    const-string v4, "activity-alias"

    move-object/from16 v0, v29

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1636
    invoke-direct/range {p0 .. p6}, Landroid/content/pm/PackageParser;->parseActivityAlias(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Activity;

    move-result-object v15

    .line 1637
    .restart local v15       #a:Landroid/content/pm/PackageParser$Activity;
    if-nez v15, :cond_1d

    .line 1638
    const/16 v4, -0x6c

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1639
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1642
    :cond_1d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1644
    .end local v15           #a:Landroid/content/pm/PackageParser$Activity;
    :cond_1e
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "meta-data"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1648
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    move-object v11, v0

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v12, p6

    invoke-direct/range {v7 .. v12}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    if-nez v4, :cond_13

    .line 1650
    const/16 v4, -0x6c

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1651
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1654
    :cond_1f
    const-string/jumbo v4, "uses-library"

    move-object/from16 v0, v29

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1655
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesLibrary:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 1660
    const/4 v4, 0x0

    move-object/from16 v0, v27

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v20

    .line 1662
    .local v20, lname:Ljava/lang/String;
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, v27

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    .line 1666
    .local v25, req:Z
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 1668
    if-eqz v20, :cond_21

    .line 1669
    if-eqz v25, :cond_22

    .line 1670
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object v4, v0

    if-nez v4, :cond_20

    .line 1671
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    .line 1673
    :cond_20
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 1674
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesLibraries:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1686
    :cond_21
    :goto_5
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 1677
    :cond_22
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    move-object v4, v0

    if-nez v4, :cond_23

    .line 1678
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    .line 1680
    :cond_23
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 1681
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->usesOptionalLibraries:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1690
    .end local v20           #lname:Ljava/lang/String;
    .end local v25           #req:Z
    :cond_24
    const-string v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown element under <application>: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 1703
    .end local v29           #tagName:Ljava/lang/String;
    :cond_25
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method private parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;
    .locals 9
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1369
    sget-object v0, Lcom/android/internal/R$styleable;->AndroidManifestInstrumentation:[I

    invoke-virtual {p2, p4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 1372
    .local v7, sa:Landroid/content/res/TypedArray;
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    if-nez v0, :cond_0

    .line 1373
    new-instance v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p5

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageParser$ParsePackageItemArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;III)V

    iput-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 1377
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    const-string v1, "<instrumentation>"

    iput-object v1, v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->tag:Ljava/lang/String;

    .line 1380
    :cond_0
    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    iput-object v7, v0, Landroid/content/pm/PackageParser$ParsePackageItemArgs;->sa:Landroid/content/res/TypedArray;

    .line 1382
    new-instance v5, Landroid/content/pm/PackageParser$Instrumentation;

    iget-object v0, p0, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    new-instance v1, Landroid/content/pm/InstrumentationInfo;

    invoke-direct {v1}, Landroid/content/pm/InstrumentationInfo;-><init>()V

    invoke-direct {v5, v0, v1}, Landroid/content/pm/PackageParser$Instrumentation;-><init>(Landroid/content/pm/PackageParser$ParsePackageItemArgs;Landroid/content/pm/InstrumentationInfo;)V

    .line 1384
    .local v5, a:Landroid/content/pm/PackageParser$Instrumentation;
    const/4 v0, 0x0

    aget-object v0, p5, v0

    if-eqz v0, :cond_1

    .line 1385
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 1386
    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1387
    const/4 v0, 0x0

    .line 1421
    :goto_0
    return-object v0

    .line 1393
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v8

    .line 1395
    .local v8, str:Ljava/lang/String;
    iget-object v0, v5, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, v0, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    .line 1397
    iget-object v0, v5, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/InstrumentationInfo;->handleProfiling:Z

    .line 1401
    iget-object v0, v5, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/InstrumentationInfo;->functionalTest:Z

    .line 1405
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 1407
    iget-object v0, v5, Landroid/content/pm/PackageParser$Instrumentation;->info:Landroid/content/pm/InstrumentationInfo;

    iget-object v0, v0, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 1408
    const/4 v0, 0x0

    const-string v1, "<instrumentation> does not specify targetPackage"

    aput-object v1, p5, v0

    .line 1409
    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1410
    const/4 v0, 0x0

    goto :goto_0

    .line 1395
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 1413
    :cond_3
    const-string v4, "<instrumentation>"

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1415
    const/16 v0, -0x6c

    iput v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1416
    const/4 v0, 0x0

    goto :goto_0

    .line 1419
    :cond_4
    iget-object v0, p1, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v5

    .line 1421
    goto :goto_0
.end method

.method private parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;Z)Z
    .locals 17
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outInfo"
    .parameter "outError"
    .parameter "isActivity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2522
    sget-object v14, Lcom/android/internal/R$styleable;->AndroidManifestIntentFilter:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 2525
    .local v9, sa:Landroid/content/res/TypedArray;
    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 2527
    .local v8, priority:I
    if-lez v8, :cond_0

    if-eqz p7, :cond_0

    and-int/lit8 v14, p4, 0x1

    if-nez v14, :cond_0

    .line 2528
    const-string v14, "PackageParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Activity with priority > 0, forcing to 0 at "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2531
    const/4 v8, 0x0

    .line 2533
    :cond_0
    move-object/from16 v0, p5

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$IntentInfo;->setPriority(I)V

    .line 2535
    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v12

    .line 2537
    .local v12, v:Landroid/util/TypedValue;
    if-eqz v12, :cond_1

    iget v14, v12, Landroid/util/TypedValue;->resourceId:I

    move v0, v14

    move-object/from16 v1, p5

    iput v0, v1, Landroid/content/pm/PackageParser$IntentInfo;->labelRes:I

    if-nez v14, :cond_1

    .line 2538
    invoke-virtual {v12}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p5

    iput-object v0, v1, Landroid/content/pm/PackageParser$IntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 2541
    :cond_1
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p5

    iput v0, v1, Landroid/content/pm/PackageParser$IntentInfo;->icon:I

    .line 2544
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 2546
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    .line 2549
    .local v6, outerDepth:I
    :cond_2
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    .local v11, type:I
    const/4 v14, 0x1

    if-eq v11, v14, :cond_11

    const/4 v14, 0x3

    if-ne v11, v14, :cond_3

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v6, :cond_11

    .line 2550
    :cond_3
    const/4 v14, 0x3

    if-eq v11, v14, :cond_2

    const/4 v14, 0x4

    if-eq v11, v14, :cond_2

    .line 2554
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2555
    .local v5, nodeName:Ljava/lang/String;
    const-string v14, "action"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 2556
    const-string v14, "http://schemas.android.com/apk/res/android"

    const-string v15, "name"

    move-object/from16 v0, p3

    move-object v1, v14

    move-object v2, v15

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2558
    .local v13, value:Ljava/lang/String;
    if-eqz v13, :cond_4

    const-string v14, ""

    if-ne v13, v14, :cond_5

    .line 2559
    :cond_4
    const/4 v14, 0x0

    const-string v15, "No value supplied for <android:name>"

    aput-object v15, p6, v14

    .line 2560
    const/4 v14, 0x0

    .line 2648
    .end local v5           #nodeName:Ljava/lang/String;
    .end local v13           #value:Ljava/lang/String;
    :goto_1
    return v14

    .line 2562
    .restart local v5       #nodeName:Ljava/lang/String;
    .restart local v13       #value:Ljava/lang/String;
    :cond_5
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2564
    move-object/from16 v0, p5

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$IntentInfo;->addAction(Ljava/lang/String;)V

    goto :goto_0

    .line 2565
    .end local v13           #value:Ljava/lang/String;
    :cond_6
    const-string v14, "category"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 2566
    const-string v14, "http://schemas.android.com/apk/res/android"

    const-string v15, "name"

    move-object/from16 v0, p3

    move-object v1, v14

    move-object v2, v15

    invoke-interface {v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2568
    .restart local v13       #value:Ljava/lang/String;
    if-eqz v13, :cond_7

    const-string v14, ""

    if-ne v13, v14, :cond_8

    .line 2569
    :cond_7
    const/4 v14, 0x0

    const-string v15, "No value supplied for <android:name>"

    aput-object v15, p6, v14

    .line 2570
    const/4 v14, 0x0

    goto :goto_1

    .line 2572
    :cond_8
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2574
    move-object/from16 v0, p5

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$IntentInfo;->addCategory(Ljava/lang/String;)V

    goto :goto_0

    .line 2576
    .end local v13           #value:Ljava/lang/String;
    :cond_9
    const-string v14, "data"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 2577
    sget-object v14, Lcom/android/internal/R$styleable;->AndroidManifestData:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 2580
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 2582
    .local v10, str:Ljava/lang/String;
    if-eqz v10, :cond_a

    .line 2584
    :try_start_0
    move-object/from16 v0, p5

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$IntentInfo;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2592
    :cond_a
    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 2594
    if-eqz v10, :cond_b

    .line 2595
    move-object/from16 v0, p5

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$IntentInfo;->addDataScheme(Ljava/lang/String;)V

    .line 2598
    :cond_b
    const/4 v14, 0x2

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    .line 2600
    .local v4, host:Ljava/lang/String;
    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v7

    .line 2602
    .local v7, port:Ljava/lang/String;
    if-eqz v4, :cond_c

    .line 2603
    move-object/from16 v0, p5

    move-object v1, v4

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageParser$IntentInfo;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 2606
    :cond_c
    const/4 v14, 0x4

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 2608
    if-eqz v10, :cond_d

    .line 2609
    const/4 v14, 0x0

    move-object/from16 v0, p5

    move-object v1, v10

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 2612
    :cond_d
    const/4 v14, 0x5

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 2614
    if-eqz v10, :cond_e

    .line 2615
    const/4 v14, 0x1

    move-object/from16 v0, p5

    move-object v1, v10

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 2618
    :cond_e
    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v10

    .line 2620
    if-eqz v10, :cond_f

    .line 2621
    const/4 v14, 0x2

    move-object/from16 v0, p5

    move-object v1, v10

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageParser$IntentInfo;->addDataPath(Ljava/lang/String;I)V

    .line 2624
    :cond_f
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 2625
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2585
    .end local v4           #host:Ljava/lang/String;
    .end local v7           #port:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 2586
    .local v3, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    const/4 v14, 0x0

    invoke-virtual {v3}, Landroid/content/IntentFilter$MalformedMimeTypeException;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, p6, v14

    .line 2587
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 2588
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 2627
    .end local v3           #e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v10           #str:Ljava/lang/String;
    :cond_10
    const-string v14, "PackageParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown element under <intent-filter>: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " at "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2630
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2637
    .end local v5           #nodeName:Ljava/lang/String;
    :cond_11
    const-string v14, "android.intent.category.DEFAULT"

    move-object/from16 v0, p5

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageParser$IntentInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v14

    move v0, v14

    move-object/from16 v1, p5

    iput-boolean v0, v1, Landroid/content/pm/PackageParser$IntentInfo;->hasDefault:Z

    .line 2648
    const/4 v14, 0x1

    goto/16 :goto_1
.end method

.method private parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "data"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2454
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestMetaData:[I

    invoke-virtual {p1, p3, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 2457
    .local v2, sa:Landroid/content/res/TypedArray;
    if-nez p4, :cond_0

    .line 2458
    new-instance p4, Landroid/os/Bundle;

    .end local p4
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 2461
    .restart local p4
    :cond_0
    invoke-virtual {v2, v6, v6}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 2463
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 2464
    const-string v4, "<meta-data> requires an android:name attribute"

    aput-object v4, p5, v6

    .line 2465
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    move-object v4, v8

    .line 2511
    :goto_0
    return-object v4

    .line 2469
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 2471
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 2473
    .local v3, v:Landroid/util/TypedValue;
    if-eqz v3, :cond_2

    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    if-eqz v4, :cond_2

    .line 2475
    iget v4, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2507
    :goto_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 2509
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    move-object v4, p4

    .line 2511
    goto :goto_0

    .line 2477
    :cond_2
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 2480
    if-eqz v3, :cond_9

    .line 2481
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 2482
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2483
    .local v0, cs:Ljava/lang/CharSequence;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v4, v8

    goto :goto_2

    .line 2484
    .end local v0           #cs:Ljava/lang/CharSequence;
    :cond_4
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x12

    if-ne v4, v5, :cond_6

    .line 2485
    iget v4, v3, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_5

    move v4, v7

    :goto_3
    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_5
    move v4, v6

    goto :goto_3

    .line 2486
    :cond_6
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_7

    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_7

    .line 2488
    iget v4, v3, Landroid/util/TypedValue;->data:I

    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 2489
    :cond_7
    iget v4, v3, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_8

    .line 2490
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    move-result v4

    invoke-virtual {p4, v1, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_1

    .line 2493
    :cond_8
    const-string v4, "PackageParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<meta-data> only supports string, integer, float, color, boolean, and resource reference types: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2502
    :cond_9
    const-string v4, "<meta-data> requires an android:value or android:resource attribute"

    aput-object v4, p5, v6

    .line 2503
    const/4 p4, 0x0

    goto/16 :goto_1
.end method

.method private parsePackage(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 37
    .parameter "res"
    .parameter "parser"
    .parameter "flags"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 742
    move-object/from16 v8, p2

    .line 744
    .local v8, attrs:Landroid/util/AttributeSet;
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mParseInstrumentationArgs:Landroid/content/pm/PackageParser$ParsePackageItemArgs;

    .line 745
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mParseActivityArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 746
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 747
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 749
    move-object/from16 v0, p2

    move-object v1, v8

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->parsePackageName(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 750
    .local v25, pkgName:Ljava/lang/String;
    if-nez v25, :cond_0

    .line 751
    const/16 v4, -0x6a

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 752
    const/4 v4, 0x0

    .line 1146
    :goto_0
    return-object v4

    .line 756
    :cond_0
    new-instance v5, Landroid/content/pm/PackageParser$Package;

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$Package;-><init>(Ljava/lang/String;)V

    .line 757
    .local v5, pkg:Landroid/content/pm/PackageParser$Package;
    const/4 v15, 0x0

    .line 759
    .local v15, foundApp:Z
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifest:[I

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 761
    .local v27, sa:Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, v5, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    .line 763
    const/4 v4, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 765
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 766
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    .line 768
    :cond_1
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v28

    .line 770
    .local v28, str:Ljava/lang/String;
    if-eqz v28, :cond_3

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 771
    const/4 v4, 0x1

    move-object/from16 v0, v28

    move v1, v4

    invoke-static {v0, v1}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v21

    .line 772
    .local v21, nameError:Ljava/lang/String;
    if-eqz v21, :cond_2

    const-string v4, "android"

    move-object v0, v4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 773
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #pkg:Landroid/content/pm/PackageParser$Package;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<manifest> specifies bad sharedUserId name \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p4, v4

    .line 775
    const/16 v4, -0x6b

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 776
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 778
    .restart local v5       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_2
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v5, Landroid/content/pm/PackageParser$Package;->mSharedUserId:Ljava/lang/String;

    .line 779
    const/4 v4, 0x3

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v5, Landroid/content/pm/PackageParser$Package;->mSharedUserLabel:I

    .line 782
    .end local v21           #nameError:Ljava/lang/String;
    :cond_3
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 784
    const/4 v4, 0x4

    const/4 v6, -0x1

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, v5, Landroid/content/pm/PackageParser$Package;->installLocation:I

    .line 789
    const/16 v31, 0x1

    .line 790
    .local v31, supportsSmallScreens:I
    const/16 v30, 0x1

    .line 791
    .local v30, supportsNormalScreens:I
    const/16 v29, 0x1

    .line 792
    .local v29, supportsLargeScreens:I
    const/16 v26, 0x1

    .line 793
    .local v26, resizeable:I
    const/4 v12, 0x1

    .line 795
    .local v12, anyDensity:I
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v24

    .line 797
    .local v24, outerDepth:I
    :cond_4
    :goto_1
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v35

    .local v35, type:I
    const/4 v4, 0x1

    move/from16 v0, v35

    move v1, v4

    if-eq v0, v1, :cond_2d

    const/4 v4, 0x3

    move/from16 v0, v35

    move v1, v4

    if-ne v0, v1, :cond_5

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    move v0, v4

    move/from16 v1, v24

    if-le v0, v1, :cond_2d

    .line 798
    :cond_5
    const/4 v4, 0x3

    move/from16 v0, v35

    move v1, v4

    if-eq v0, v1, :cond_4

    const/4 v4, 0x4

    move/from16 v0, v35

    move v1, v4

    if-eq v0, v1, :cond_4

    .line 802
    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v32

    .line 803
    .local v32, tagName:Ljava/lang/String;
    const-string v4, "application"

    move-object/from16 v0, v32

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 804
    if-eqz v15, :cond_6

    .line 810
    const-string v4, "PackageParser"

    const-string v6, "<manifest> has more than one <application>"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 816
    :cond_6
    const/4 v15, 0x1

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    .line 817
    invoke-direct/range {v4 .. v10}, Landroid/content/pm/PackageParser;->parseApplication(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 818
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 820
    :cond_7
    const-string v4, "permission-group"

    move-object/from16 v0, v32

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    .line 821
    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackageParser;->parsePermissionGroup(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$PermissionGroup;

    move-result-object v4

    if-nez v4, :cond_4

    .line 822
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 824
    :cond_8
    const-string v4, "permission"

    move-object/from16 v0, v32

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    .line 825
    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackageParser;->parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;

    move-result-object v4

    if-nez v4, :cond_4

    .line 826
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 828
    :cond_9
    const-string v4, "permission-tree"

    move-object/from16 v0, v32

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    .line 829
    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackageParser;->parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;

    move-result-object v4

    if-nez v4, :cond_4

    .line 830
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 832
    :cond_a
    const-string/jumbo v4, "uses-permission"

    move-object/from16 v0, v32

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 833
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 838
    const/4 v4, 0x0

    move-object/from16 v0, v27

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v20

    .line 841
    .local v20, name:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 843
    if-eqz v20, :cond_b

    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 844
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    :cond_b
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 849
    .end local v20           #name:Ljava/lang/String;
    :cond_c
    const-string/jumbo v4, "uses-configuration"

    move-object/from16 v0, v32

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 850
    new-instance v13, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v13}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 851
    .local v13, cPref:Landroid/content/pm/ConfigurationInfo;
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesConfiguration:[I

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 853
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v13, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    .line 856
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v13, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    .line 859
    const/4 v4, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 862
    iget v4, v13, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v13, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 864
    :cond_d
    const/4 v4, 0x3

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v13, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    .line 867
    const/4 v4, 0x4

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 870
    iget v4, v13, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v13, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 872
    :cond_e
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 873
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 877
    .end local v13           #cPref:Landroid/content/pm/ConfigurationInfo;
    :cond_f
    const-string/jumbo v4, "uses-feature"

    move-object/from16 v0, v32

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 878
    new-instance v14, Landroid/content/pm/FeatureInfo;

    invoke-direct {v14}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 879
    .local v14, fi:Landroid/content/pm/FeatureInfo;
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesFeature:[I

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 883
    const/4 v4, 0x0

    move-object/from16 v0, v27

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v14, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    .line 885
    iget-object v4, v14, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v4, :cond_10

    .line 886
    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v14, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    .line 890
    :cond_10
    const/4 v4, 0x2

    const/4 v6, 0x1

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 893
    iget v4, v14, Landroid/content/pm/FeatureInfo;->flags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v14, Landroid/content/pm/FeatureInfo;->flags:I

    .line 895
    :cond_11
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 896
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    if-nez v4, :cond_12

    .line 897
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v5, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    .line 899
    :cond_12
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->reqFeatures:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 901
    iget-object v4, v14, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-nez v4, :cond_13

    .line 902
    new-instance v13, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v13}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 903
    .restart local v13       #cPref:Landroid/content/pm/ConfigurationInfo;
    iget v4, v14, Landroid/content/pm/FeatureInfo;->reqGlEsVersion:I

    iput v4, v13, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 904
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->configPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 907
    .end local v13           #cPref:Landroid/content/pm/ConfigurationInfo;
    :cond_13
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 909
    .end local v14           #fi:Landroid/content/pm/FeatureInfo;
    :cond_14
    const-string/jumbo v4, "uses-sdk"

    move-object/from16 v0, v32

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 910
    sget v4, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    if-lez v4, :cond_1e

    .line 911
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestUsesSdk:[I

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 914
    const/16 v19, 0x0

    .line 915
    .local v19, minVers:I
    const/16 v18, 0x0

    .line 916
    .local v18, minCode:Ljava/lang/String;
    const/16 v34, 0x0

    .line 917
    .local v34, targetVers:I
    const/16 v33, 0x0

    .line 919
    .local v33, targetCode:Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, v27

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v36

    .line 921
    .local v36, val:Landroid/util/TypedValue;
    if-eqz v36, :cond_15

    .line 922
    move-object/from16 v0, v36

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move v4, v0

    const/4 v6, 0x3

    if-ne v4, v6, :cond_17

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object v4, v0

    if-eqz v4, :cond_17

    .line 923
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v33, v18

    .line 930
    :cond_15
    :goto_2
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v36

    .line 932
    if-eqz v36, :cond_16

    .line 933
    move-object/from16 v0, v36

    iget v0, v0, Landroid/util/TypedValue;->type:I

    move v4, v0

    const/4 v6, 0x3

    if-ne v4, v6, :cond_18

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object v4, v0

    if-eqz v4, :cond_18

    .line 934
    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v33, v18

    .line 941
    :cond_16
    :goto_3
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 943
    if-eqz v18, :cond_1a

    .line 944
    sget-object v4, Landroid/content/pm/PackageParser;->SDK_CODENAME:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 945
    sget-object v4, Landroid/content/pm/PackageParser;->SDK_CODENAME:Ljava/lang/String;

    if-eqz v4, :cond_19

    .line 946
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #pkg:Landroid/content/pm/PackageParser$Package;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requires development platform "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (current platform is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/content/pm/PackageParser;->SDK_CODENAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p4, v4

    .line 952
    :goto_4
    const/16 v4, -0xc

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 953
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 926
    .restart local v5       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_17
    move-object/from16 v0, v36

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v19, v0

    move/from16 v34, v19

    goto :goto_2

    .line 937
    :cond_18
    move-object/from16 v0, v36

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v34, v0

    goto :goto_3

    .line 949
    :cond_19
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #pkg:Landroid/content/pm/PackageParser$Package;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requires development platform "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but this is a release platform."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p4, v4

    goto :goto_4

    .line 955
    .restart local v5       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_1a
    sget v4, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    move/from16 v0, v19

    move v1, v4

    if-le v0, v1, :cond_1b

    .line 956
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #pkg:Landroid/content/pm/PackageParser$Package;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requires newer sdk version #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (current version is #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Landroid/content/pm/PackageParser;->SDK_VERSION:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p4, v4

    .line 958
    const/16 v4, -0xc

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 959
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 962
    .restart local v5       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_1b
    if-eqz v33, :cond_1f

    .line 963
    sget-object v4, Landroid/content/pm/PackageParser;->SDK_CODENAME:Ljava/lang/String;

    move-object/from16 v0, v33

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 964
    sget-object v4, Landroid/content/pm/PackageParser;->SDK_CODENAME:Ljava/lang/String;

    if-eqz v4, :cond_1c

    .line 965
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #pkg:Landroid/content/pm/PackageParser$Package;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requires development platform "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (current platform is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/content/pm/PackageParser;->SDK_CODENAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p4, v4

    .line 971
    :goto_5
    const/16 v4, -0xc

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 972
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 968
    .restart local v5       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_1c
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #pkg:Landroid/content/pm/PackageParser$Package;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requires development platform "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but this is a release platform."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p4, v4

    goto :goto_5

    .line 975
    .restart local v5       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_1d
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/16 v6, 0x2710

    iput v6, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 982
    .end local v18           #minCode:Ljava/lang/String;
    .end local v19           #minVers:I
    .end local v33           #targetCode:Ljava/lang/String;
    .end local v34           #targetVers:I
    .end local v36           #val:Landroid/util/TypedValue;
    :cond_1e
    :goto_6
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 978
    .restart local v18       #minCode:Ljava/lang/String;
    .restart local v19       #minVers:I
    .restart local v33       #targetCode:Ljava/lang/String;
    .restart local v34       #targetVers:I
    .restart local v36       #val:Landroid/util/TypedValue;
    :cond_1f
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move/from16 v0, v34

    move-object v1, v4

    iput v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    goto :goto_6

    .line 984
    .end local v18           #minCode:Ljava/lang/String;
    .end local v19           #minVers:I
    .end local v33           #targetCode:Ljava/lang/String;
    .end local v34           #targetVers:I
    .end local v36           #val:Landroid/util/TypedValue;
    :cond_20
    const-string/jumbo v4, "supports-screens"

    move-object/from16 v0, v32

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 985
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestSupportsScreens:[I

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 990
    const/4 v4, 0x1

    move-object/from16 v0, v27

    move v1, v4

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v31

    .line 993
    const/4 v4, 0x2

    move-object/from16 v0, v27

    move v1, v4

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v30

    .line 996
    const/4 v4, 0x3

    move-object/from16 v0, v27

    move v1, v4

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v29

    .line 999
    const/4 v4, 0x4

    move-object/from16 v0, v27

    move v1, v4

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v26

    .line 1002
    const/4 v4, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v12

    .line 1006
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 1008
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 1010
    :cond_21
    const-string v4, "protected-broadcast"

    move-object/from16 v0, v32

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1011
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestProtectedBroadcast:[I

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 1016
    const/4 v4, 0x0

    move-object/from16 v0, v27

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v20

    .line 1019
    .restart local v20       #name:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 1021
    if-eqz v20, :cond_23

    and-int/lit8 v4, p3, 0x1

    if-eqz v4, :cond_23

    .line 1022
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    if-nez v4, :cond_22

    .line 1023
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v5, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    .line 1025
    :cond_22
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 1026
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->protectedBroadcasts:Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1030
    :cond_23
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 1032
    .end local v20           #name:Ljava/lang/String;
    :cond_24
    const-string v4, "instrumentation"

    move-object/from16 v0, v32

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v9, p4

    .line 1033
    invoke-direct/range {v4 .. v9}, Landroid/content/pm/PackageParser;->parseInstrumentation(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Instrumentation;

    move-result-object v4

    if-nez v4, :cond_4

    .line 1034
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1037
    :cond_25
    const-string v4, "original-package"

    move-object/from16 v0, v32

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1038
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 1041
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v23

    .line 1043
    .local v23, orig:Ljava/lang/String;
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 1044
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    if-nez v4, :cond_26

    .line 1045
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v5, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    .line 1046
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v4, v5, Landroid/content/pm/PackageParser$Package;->mRealPackage:Ljava/lang/String;

    .line 1048
    :cond_26
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->mOriginalPackages:Ljava/util/ArrayList;

    move-object v0, v4

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1051
    :cond_27
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 1053
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 1055
    .end local v23           #orig:Ljava/lang/String;
    :cond_28
    const-string v4, "adopt-permissions"

    move-object/from16 v0, v32

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1056
    sget-object v4, Lcom/android/internal/R$styleable;->AndroidManifestOriginalPackage:[I

    move-object/from16 v0, p1

    move-object v1, v8

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v27

    .line 1059
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v27

    move v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v20

    .line 1062
    .restart local v20       #name:Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/content/res/TypedArray;->recycle()V

    .line 1064
    if-eqz v20, :cond_2a

    .line 1065
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    if-nez v4, :cond_29

    .line 1066
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v5, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    .line 1068
    :cond_29
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->mAdoptPermissions:Ljava/util/ArrayList;

    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1071
    :cond_2a
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 1073
    .end local v20           #name:Ljava/lang/String;
    :cond_2b
    const-string v4, "eat-comment"

    move-object/from16 v0, v32

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 1075
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 1085
    :cond_2c
    const-string v4, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <manifest>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 1093
    .end local v32           #tagName:Ljava/lang/String;
    :cond_2d
    if-nez v15, :cond_2e

    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->instrumentation:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2e

    .line 1094
    const/4 v4, 0x0

    const-string v6, "<manifest> does not contain an <application> or <instrumentation>"

    aput-object v6, p4, v4

    .line 1095
    const/16 v4, -0x6d

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1098
    :cond_2e
    sget-object v4, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    array-length v11, v4

    .line 1099
    .local v11, NP:I
    const/16 v16, 0x0

    .line 1100
    .local v16, implicitPerms:Ljava/lang/StringBuilder;
    const/16 v17, 0x0

    .local v17, ip:I
    :goto_7
    move/from16 v0, v17

    move v1, v11

    if-ge v0, v1, :cond_2f

    .line 1101
    sget-object v4, Landroid/content/pm/PackageParser;->NEW_PERMISSIONS:[Landroid/content/pm/PackageParser$NewPermissionInfo;

    aget-object v22, v4, v17

    .line 1103
    .local v22, npi:Landroid/content/pm/PackageParser$NewPermissionInfo;
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    move v6, v0

    if-lt v4, v6, :cond_3a

    .line 1118
    .end local v22           #npi:Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_2f
    if-eqz v16, :cond_30

    .line 1119
    const-string v4, "PackageParser"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    :cond_30
    if-ltz v31, :cond_31

    if-lez v31, :cond_32

    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v6, 0x4

    if-lt v4, v6, :cond_32

    .line 1125
    :cond_31
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x200

    iput v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1127
    :cond_32
    if-eqz v30, :cond_33

    .line 1128
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x400

    iput v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1130
    :cond_33
    if-ltz v29, :cond_34

    if-lez v29, :cond_35

    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v6, 0x4

    if-lt v4, v6, :cond_35

    .line 1133
    :cond_34
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x800

    iput v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1135
    :cond_35
    if-ltz v26, :cond_36

    if-lez v26, :cond_37

    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v6, 0x4

    if-lt v4, v6, :cond_37

    .line 1138
    :cond_36
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x1000

    iput v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1140
    :cond_37
    if-ltz v12, :cond_38

    if-lez v12, :cond_39

    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v6, 0x4

    if-lt v4, v6, :cond_39

    .line 1143
    :cond_38
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    or-int/lit16 v6, v6, 0x2000

    iput v6, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    :cond_39
    move-object v4, v5

    .line 1146
    goto/16 :goto_0

    .line 1106
    .restart local v22       #npi:Landroid/content/pm/PackageParser$NewPermissionInfo;
    :cond_3a
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 1107
    if-nez v16, :cond_3c

    .line 1108
    new-instance v16, Ljava/lang/StringBuilder;

    .end local v16           #implicitPerms:Ljava/lang/StringBuilder;
    const/16 v4, 0x80

    move-object/from16 v0, v16

    move v1, v4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1109
    .restart local v16       #implicitPerms:Ljava/lang/StringBuilder;
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    const-string v4, ": compat added "

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    :goto_8
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1100
    :cond_3b
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_7

    .line 1112
    :cond_3c
    const/16 v4, 0x20

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8
.end method

.method private parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;III)Z
    .locals 6
    .parameter "owner"
    .parameter "outInfo"
    .parameter "outError"
    .parameter "tag"
    .parameter "sa"
    .parameter "nameRes"
    .parameter "labelRes"
    .parameter "iconRes"

    .prologue
    const/4 v5, 0x0

    .line 1709
    invoke-virtual {p5, p6, v5}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v1

    .line 1710
    .local v1, name:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1711
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not specify android:name"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v5

    move v3, v5

    .line 1734
    :goto_0
    return v3

    .line 1715
    :cond_0
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v1, p3}, Landroid/content/pm/PackageParser;->buildClassName(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    .line 1717
    iget-object v3, p2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v5

    .line 1718
    goto :goto_0

    .line 1721
    :cond_1
    invoke-virtual {p5, p8, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 1722
    .local v0, iconVal:I
    if-eqz v0, :cond_2

    .line 1723
    iput v0, p2, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 1724
    const/4 v3, 0x0

    iput-object v3, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1727
    :cond_2
    invoke-virtual {p5, p7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 1728
    .local v2, v:Landroid/util/TypedValue;
    if-eqz v2, :cond_3

    iget v3, v2, Landroid/util/TypedValue;->resourceId:I

    iput v3, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v3, :cond_3

    .line 1729
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1732
    :cond_3
    iget-object v3, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v3, p2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1734
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static parsePackageLite(Ljava/lang/String;I)Landroid/content/pm/PackageParser$PackageLite;
    .locals 12
    .parameter "packageFilePath"
    .parameter "flags"

    .prologue
    const/4 v11, 0x0

    const-string v10, "PackageParser"

    .line 591
    const/4 v7, 0x0

    .line 592
    .local v7, parser:Landroid/content/res/XmlResourceParser;
    const/4 v0, 0x0

    .line 594
    .local v0, assmgr:Landroid/content/res/AssetManager;
    :try_start_0
    new-instance v1, Landroid/content/res/AssetManager;

    invoke-direct {v1}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    .end local v0           #assmgr:Landroid/content/res/AssetManager;
    .local v1, assmgr:Landroid/content/res/AssetManager;
    :try_start_1
    invoke-virtual {v1, p0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v3

    .line 596
    .local v3, cookie:I
    const-string v8, "AndroidManifest.xml"

    invoke-virtual {v1, v3, v8}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v7

    .line 603
    move-object v2, v7

    .line 604
    .local v2, attrs:Landroid/util/AttributeSet;
    const/4 v8, 0x1

    new-array v5, v8, [Ljava/lang/String;

    .line 605
    .local v5, errors:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 607
    .local v6, packageLite:Landroid/content/pm/PackageParser$PackageLite;
    :try_start_2
    invoke-static {v7, v2, p1, v5}, Landroid/content/pm/PackageParser;->parsePackageLite(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$PackageLite;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    .line 613
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 614
    :cond_0
    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    .line 616
    :cond_1
    if-nez v6, :cond_7

    .line 617
    const-string v8, "PackageParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parsePackageLite error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .end local v1           #assmgr:Landroid/content/res/AssetManager;
    .restart local v0       #assmgr:Landroid/content/res/AssetManager;
    move-object v8, v11

    .line 620
    .end local v2           #attrs:Landroid/util/AttributeSet;
    .end local v3           #cookie:I
    .end local v5           #errors:[Ljava/lang/String;
    .end local v6           #packageLite:Landroid/content/pm/PackageParser$PackageLite;
    :goto_1
    return-object v8

    .line 597
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 598
    .local v4, e:Ljava/lang/Exception;
    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->close()V

    .line 599
    :cond_2
    const-string v8, "PackageParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to read AndroidManifest.xml of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v8, v11

    .line 601
    goto :goto_1

    .line 608
    .end local v0           #assmgr:Landroid/content/res/AssetManager;
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v1       #assmgr:Landroid/content/res/AssetManager;
    .restart local v2       #attrs:Landroid/util/AttributeSet;
    .restart local v3       #cookie:I
    .restart local v5       #errors:[Ljava/lang/String;
    .restart local v6       #packageLite:Landroid/content/pm/PackageParser$PackageLite;
    :catch_1
    move-exception v4

    .line 609
    .local v4, e:Ljava/io/IOException;
    :try_start_3
    const-string v8, "PackageParser"

    invoke-static {v8, p0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 613
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 614
    :cond_3
    if-eqz v1, :cond_1

    goto :goto_0

    .line 610
    .end local v4           #e:Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 611
    .local v4, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4
    const-string v8, "PackageParser"

    invoke-static {v8, p0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 613
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 614
    :cond_4
    if-eqz v1, :cond_1

    goto :goto_0

    .line 613
    .end local v4           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v8

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    .line 614
    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    .line 613
    :cond_6
    throw v8

    :cond_7
    move-object v0, v1

    .end local v1           #assmgr:Landroid/content/res/AssetManager;
    .restart local v0       #assmgr:Landroid/content/res/AssetManager;
    move-object v8, v6

    .line 620
    goto :goto_1

    .line 597
    .end local v0           #assmgr:Landroid/content/res/AssetManager;
    .end local v2           #attrs:Landroid/util/AttributeSet;
    .end local v3           #cookie:I
    .end local v5           #errors:[Ljava/lang/String;
    .end local v6           #packageLite:Landroid/content/pm/PackageParser$PackageLite;
    .restart local v1       #assmgr:Landroid/content/res/AssetManager;
    :catch_3
    move-exception v8

    move-object v4, v8

    move-object v0, v1

    .end local v1           #assmgr:Landroid/content/res/AssetManager;
    .restart local v0       #assmgr:Landroid/content/res/AssetManager;
    goto :goto_2
.end method

.method private static parsePackageLite(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$PackageLite;
    .locals 11
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 690
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, type:I
    if-eq v5, v6, :cond_1

    if-ne v5, v10, :cond_0

    .line 694
    :cond_1
    if-eq v5, v6, :cond_2

    .line 695
    const-string v6, "No start tag found"

    aput-object v6, p3, v9

    move-object v6, v8

    .line 724
    :goto_0
    return-object v6

    .line 698
    :cond_2
    and-int/lit8 v6, p2, 0x2

    if-eqz v6, :cond_3

    .line 700
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "manifest"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 701
    const-string v6, "No <manifest> tag"

    aput-object v6, p3, v9

    move-object v6, v8

    .line 702
    goto :goto_0

    .line 704
    :cond_4
    const-string v6, "package"

    invoke-interface {p1, v8, v6}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 705
    .local v4, pkgName:Ljava/lang/String;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_6

    .line 706
    :cond_5
    const-string v6, "<manifest> does not specify package"

    aput-object v6, p3, v9

    move-object v6, v8

    .line 707
    goto :goto_0

    .line 709
    :cond_6
    invoke-static {v4, v10}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 710
    .local v3, nameError:Ljava/lang/String;
    if-eqz v3, :cond_7

    const-string v6, "android"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 711
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<manifest> specifies bad package name \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, p3, v9

    move-object v6, v8

    .line 713
    goto :goto_0

    .line 715
    :cond_7
    const/4 v2, -0x1

    .line 716
    .local v2, installLocation:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v6

    if-ge v1, v6, :cond_8

    .line 717
    invoke-interface {p1, v1}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 718
    .local v0, attr:Ljava/lang/String;
    const-string v6, "installLocation"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 719
    const/4 v6, -0x1

    invoke-interface {p1, v1, v6}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v2

    .line 724
    .end local v0           #attr:Ljava/lang/String;
    :cond_8
    new-instance v6, Landroid/content/pm/PackageParser$PackageLite;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Landroid/content/pm/PackageParser$PackageLite;-><init>(Ljava/lang/String;I)V

    goto :goto_0

    .line 716
    .restart local v0       #attr:Ljava/lang/String;
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static parsePackageName(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 655
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .local v2, type:I
    if-eq v2, v3, :cond_1

    if-ne v2, v7, :cond_0

    .line 659
    :cond_1
    if-eq v2, v3, :cond_2

    .line 660
    const-string v3, "No start tag found"

    aput-object v3, p3, v6

    move-object v3, v5

    .line 681
    :goto_0
    return-object v3

    .line 663
    :cond_2
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_3

    .line 665
    :cond_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "manifest"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 666
    const-string v3, "No <manifest> tag"

    aput-object v3, p3, v6

    move-object v3, v5

    .line 667
    goto :goto_0

    .line 669
    :cond_4
    const-string v3, "package"

    invoke-interface {p1, v5, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 670
    .local v1, pkgName:Ljava/lang/String;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    .line 671
    :cond_5
    const-string v3, "<manifest> does not specify package"

    aput-object v3, p3, v6

    move-object v3, v5

    .line 672
    goto :goto_0

    .line 674
    :cond_6
    invoke-static {v1, v7}, Landroid/content/pm/PackageParser;->validateName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 675
    .local v0, nameError:Ljava/lang/String;
    if-eqz v0, :cond_7

    const-string v3, "android"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 676
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<manifest> specifies bad package name \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p3, v6

    move-object v3, v5

    .line 678
    goto :goto_0

    .line 681
    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private parsePermission(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;
    .locals 16
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1270
    new-instance v14, Landroid/content/pm/PackageParser$Permission;

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 1272
    .local v14, perm:Landroid/content/pm/PackageParser$Permission;
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestPermission:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 1275
    .local v8, sa:Landroid/content/res/TypedArray;
    iget-object v5, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const-string v7, "<permission>"

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p5

    invoke-direct/range {v3 .. v11}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;III)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1280
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 1281
    const/16 v3, -0x6c

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1282
    const/4 v3, 0x0

    .line 1317
    :goto_0
    return-object v3

    .line 1287
    :cond_0
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v4, 0x4

    invoke-virtual {v8, v4}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 1289
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1290
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v4, v4, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 1293
    :cond_1
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-virtual {v8, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v3, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 1297
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v8, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 1301
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 1303
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget v3, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 1304
    const/4 v3, 0x0

    const-string v4, "<permission> does not specify protectionLevel"

    aput-object v4, p5, v3

    .line 1305
    const/16 v3, -0x6c

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1306
    const/4 v3, 0x0

    goto :goto_0

    .line 1309
    :cond_2
    const-string v13, "<permission>"

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v15, p5

    invoke-direct/range {v9 .. v15}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1311
    const/16 v3, -0x6c

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1312
    const/4 v3, 0x0

    goto :goto_0

    .line 1315
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v14

    .line 1317
    goto :goto_0
.end method

.method private parsePermissionGroup(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$PermissionGroup;
    .locals 16
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1235
    new-instance v14, Landroid/content/pm/PackageParser$PermissionGroup;

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$PermissionGroup;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 1237
    .local v14, perm:Landroid/content/pm/PackageParser$PermissionGroup;
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestPermissionGroup:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 1240
    .local v8, sa:Landroid/content/res/TypedArray;
    iget-object v5, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const-string v7, "<permission-group>"

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p5

    invoke-direct/range {v3 .. v11}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;III)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1245
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 1246
    const/16 v3, -0x6c

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1247
    const/4 v3, 0x0

    .line 1264
    :goto_0
    return-object v3

    .line 1250
    :cond_0
    iget-object v3, v14, Landroid/content/pm/PackageParser$PermissionGroup;->info:Landroid/content/pm/PermissionGroupInfo;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v8, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v3, Landroid/content/pm/PermissionGroupInfo;->descriptionRes:I

    .line 1254
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 1256
    const-string v13, "<permission-group>"

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v15, p5

    invoke-direct/range {v9 .. v15}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1258
    const/16 v3, -0x6c

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1259
    const/4 v3, 0x0

    goto :goto_0

    .line 1262
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissionGroups:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v14

    .line 1264
    goto :goto_0
.end method

.method private parsePermissionTree(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;[Ljava/lang/String;)Landroid/content/pm/PackageParser$Permission;
    .locals 17
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1323
    new-instance v14, Landroid/content/pm/PackageParser$Permission;

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$Permission;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 1325
    .local v14, perm:Landroid/content/pm/PackageParser$Permission;
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestPermissionTree:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 1328
    .local v8, sa:Landroid/content/res/TypedArray;
    iget-object v5, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const-string v7, "<permission-tree>"

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p5

    invoke-direct/range {v3 .. v11}, Landroid/content/pm/PackageParser;->parsePackageItemInfo(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageItemInfo;[Ljava/lang/String;Ljava/lang/String;Landroid/content/res/TypedArray;III)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1333
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 1334
    const/16 v3, -0x6c

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1335
    const/4 v3, 0x0

    .line 1363
    :goto_0
    return-object v3

    .line 1338
    :cond_0
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 1340
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v16

    .line 1341
    .local v16, index:I
    if-lez v16, :cond_1

    .line 1342
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v3, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const/16 v4, 0x2e

    add-int/lit8 v5, v16, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v16

    .line 1344
    :cond_1
    if-gez v16, :cond_2

    .line 1345
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<permission-tree> name has less than three segments: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    iget-object v5, v5, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p5, v3

    .line 1347
    const/16 v3, -0x6c

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1348
    const/4 v3, 0x0

    goto :goto_0

    .line 1351
    :cond_2
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v4, 0x0

    iput v4, v3, Landroid/content/pm/PermissionInfo;->descriptionRes:I

    .line 1352
    iget-object v3, v14, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    const/4 v4, 0x0

    iput v4, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 1353
    const/4 v3, 0x1

    iput-boolean v3, v14, Landroid/content/pm/PackageParser$Permission;->tree:Z

    .line 1355
    const-string v13, "<permission-tree>"

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v15, p5

    invoke-direct/range {v9 .. v15}, Landroid/content/pm/PackageParser;->parseAllMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Ljava/lang/String;Landroid/content/pm/PackageParser$Component;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1357
    const/16 v3, -0x6c

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 1358
    const/4 v3, 0x0

    goto :goto_0

    .line 1361
    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v14

    .line 1363
    goto :goto_0
.end method

.method private parseProvider(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Provider;
    .locals 17
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2069
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestProvider:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v15

    .line 2072
    .local v15, sa:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    if-nez v3, :cond_0

    .line 2073
    new-instance v3, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    move-object v9, v0

    const/16 v10, 0x8

    const/16 v11, 0xe

    const/4 v12, 0x6

    move-object/from16 v4, p1

    move-object/from16 v5, p6

    invoke-direct/range {v3 .. v12}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;III[Ljava/lang/String;III)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 2081
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    const-string v4, "<provider>"

    iput-object v4, v3, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 2084
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    iput-object v15, v3, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 2085
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    move/from16 v0, p5

    move-object v1, v3

    iput v0, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 2087
    new-instance v7, Landroid/content/pm/PackageParser$Provider;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseProviderArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    new-instance v4, Landroid/content/pm/ProviderInfo;

    invoke-direct {v4}, Landroid/content/pm/ProviderInfo;-><init>()V

    invoke-direct {v7, v3, v4}, Landroid/content/pm/PackageParser$Provider;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ProviderInfo;)V

    .line 2088
    .local v7, p:Landroid/content/pm/PackageParser$Provider;
    const/4 v3, 0x0

    aget-object v3, p6, v3

    if-eqz v3, :cond_1

    .line 2089
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 2090
    const/4 v3, 0x0

    .line 2152
    :goto_0
    return-object v3

    .line 2093
    :cond_1
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/4 v4, 0x7

    const/4 v5, 0x1

    invoke-virtual {v15, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Landroid/content/pm/ProviderInfo;->exported:Z

    .line 2096
    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-virtual {v15, v3, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v13

    .line 2099
    .local v13, cpname:Ljava/lang/String;
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-virtual {v15, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Landroid/content/pm/ProviderInfo;->isSyncable:Z

    .line 2103
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v15, v3, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v14

    .line 2105
    .local v14, permission:Ljava/lang/String;
    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v15, v3, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v16

    .line 2107
    .local v16, str:Ljava/lang/String;
    if-nez v16, :cond_2

    .line 2108
    move-object/from16 v16, v14

    .line 2110
    :cond_2
    if-nez v16, :cond_4

    .line 2111
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    .line 2116
    :goto_1
    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v15, v3, v4}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v16

    .line 2118
    if-nez v16, :cond_3

    .line 2119
    move-object/from16 v16, v14

    .line 2121
    :cond_3
    if-nez v16, :cond_6

    .line 2122
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    .line 2128
    :goto_2
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-virtual {v15, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 2132
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v15, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Landroid/content/pm/ProviderInfo;->multiprocess:Z

    .line 2136
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-virtual {v15, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v3, Landroid/content/pm/ProviderInfo;->initOrder:I

    .line 2140
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 2142
    if-nez v13, :cond_8

    .line 2143
    const/4 v3, 0x0

    const-string v4, "<provider> does not incude authorities attribute"

    aput-object v4, p6, v3

    .line 2144
    const/4 v3, 0x0

    goto :goto_0

    .line 2113
    :cond_4
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :goto_3
    iput-object v4, v3, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    .line 2124
    :cond_6
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :goto_4
    iput-object v4, v3, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    goto :goto_4

    .line 2146
    :cond_8
    iget-object v3, v7, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    .line 2148
    invoke-direct/range {v3 .. v8}, Landroid/content/pm/PackageParser;->parseProviderTags(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 2149
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_9
    move-object v3, v7

    .line 2152
    goto/16 :goto_0
.end method

.method private parseProviderTags(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/pm/PackageParser$Provider;[Ljava/lang/String;)Z
    .locals 23
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "outInfo"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2159
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    .line 2162
    .local v14, outerDepth:I
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v21

    .local v21, type:I
    const/4 v5, 0x1

    move/from16 v0, v21

    move v1, v5

    if-eq v0, v1, :cond_14

    const/4 v5, 0x3

    move/from16 v0, v21

    move v1, v5

    if-ne v0, v1, :cond_1

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v14, :cond_14

    .line 2164
    :cond_1
    const/4 v5, 0x3

    move/from16 v0, v21

    move v1, v5

    if-eq v0, v1, :cond_0

    const/4 v5, 0x4

    move/from16 v0, v21

    move v1, v5

    if-eq v0, v1, :cond_0

    .line 2168
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "meta-data"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2169
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    move-object v9, v0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v10, p5

    invoke-direct/range {v5 .. v10}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p4

    iput-object v0, v1, Landroid/content/pm/PackageParser$Provider;->metaData:Landroid/os/Bundle;

    if-nez v5, :cond_0

    .line 2171
    const/4 v5, 0x0

    .line 2326
    :goto_1
    return v5

    .line 2174
    :cond_2
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "grant-uri-permission"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2175
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestGrantUriPermission:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v19

    .line 2178
    .local v19, sa:Landroid/content/res/TypedArray;
    const/4 v15, 0x0

    .line 2180
    .local v15, pa:Landroid/os/PatternMatcher;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v20

    .line 2182
    .local v20, str:Ljava/lang/String;
    if-eqz v20, :cond_3

    .line 2183
    new-instance v15, Landroid/os/PatternMatcher;

    .end local v15           #pa:Landroid/os/PatternMatcher;
    const/4 v5, 0x0

    move-object v0, v15

    move-object/from16 v1, v20

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 2186
    .restart local v15       #pa:Landroid/os/PatternMatcher;
    :cond_3
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v20

    .line 2188
    if-eqz v20, :cond_4

    .line 2189
    new-instance v15, Landroid/os/PatternMatcher;

    .end local v15           #pa:Landroid/os/PatternMatcher;
    const/4 v5, 0x1

    move-object v0, v15

    move-object/from16 v1, v20

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 2192
    .restart local v15       #pa:Landroid/os/PatternMatcher;
    :cond_4
    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v20

    .line 2194
    if-eqz v20, :cond_5

    .line 2195
    new-instance v15, Landroid/os/PatternMatcher;

    .end local v15           #pa:Landroid/os/PatternMatcher;
    const/4 v5, 0x2

    move-object v0, v15

    move-object/from16 v1, v20

    move v2, v5

    invoke-direct {v0, v1, v2}, Landroid/os/PatternMatcher;-><init>(Ljava/lang/String;I)V

    .line 2198
    .restart local v15       #pa:Landroid/os/PatternMatcher;
    :cond_5
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 2200
    if-eqz v15, :cond_7

    .line 2201
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    if-nez v5, :cond_6

    .line 2202
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/os/PatternMatcher;

    iput-object v6, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    .line 2203
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    const/4 v6, 0x0

    aput-object v15, v5, v6

    .line 2211
    :goto_2
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/content/pm/ProviderInfo;->grantUriPermissions:Z

    .line 2223
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2205
    :cond_6
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    array-length v11, v5

    .line 2206
    .local v11, N:I
    add-int/lit8 v5, v11, 0x1

    new-array v13, v5, [Landroid/os/PatternMatcher;

    .line 2207
    .local v13, newp:[Landroid/os/PatternMatcher;
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v13, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2208
    aput-object v15, v13, v11

    .line 2209
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iput-object v13, v5, Landroid/content/pm/ProviderInfo;->uriPermissionPatterns:[Landroid/os/PatternMatcher;

    goto :goto_2

    .line 2214
    .end local v11           #N:I
    .end local v13           #newp:[Landroid/os/PatternMatcher;
    :cond_7
    const-string v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <path-permission>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2225
    .end local v15           #pa:Landroid/os/PatternMatcher;
    .end local v19           #sa:Landroid/content/res/TypedArray;
    .end local v20           #str:Ljava/lang/String;
    :cond_8
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "path-permission"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2226
    sget-object v5, Lcom/android/internal/R$styleable;->AndroidManifestPathPermission:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v19

    .line 2229
    .restart local v19       #sa:Landroid/content/res/TypedArray;
    const/4 v15, 0x0

    .line 2231
    .local v15, pa:Landroid/content/pm/PathPermission;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v17

    .line 2233
    .local v17, permission:Ljava/lang/String;
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v18

    .line 2235
    .local v18, readPermission:Ljava/lang/String;
    if-nez v18, :cond_9

    .line 2236
    move-object/from16 v18, v17

    .line 2238
    :cond_9
    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v22

    .line 2240
    .local v22, writePermission:Ljava/lang/String;
    if-nez v22, :cond_a

    .line 2241
    move-object/from16 v22, v17

    .line 2244
    :cond_a
    const/4 v12, 0x0

    .line 2245
    .local v12, havePerm:Z
    if-eqz v18, :cond_b

    .line 2246
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v18

    .line 2247
    const/4 v12, 0x1

    .line 2249
    :cond_b
    if-eqz v22, :cond_c

    .line 2250
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v22

    .line 2251
    const/4 v12, 0x1

    .line 2254
    :cond_c
    if-nez v12, :cond_d

    .line 2256
    const-string v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No readPermission or writePermssion for <path-permission>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2266
    :cond_d
    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v16

    .line 2268
    .local v16, path:Ljava/lang/String;
    if-eqz v16, :cond_e

    .line 2269
    new-instance v15, Landroid/content/pm/PathPermission;

    .end local v15           #pa:Landroid/content/pm/PathPermission;
    const/4 v5, 0x0

    move-object v0, v15

    move-object/from16 v1, v16

    move v2, v5

    move-object/from16 v3, v18

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2273
    .restart local v15       #pa:Landroid/content/pm/PathPermission;
    :cond_e
    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v16

    .line 2275
    if-eqz v16, :cond_f

    .line 2276
    new-instance v15, Landroid/content/pm/PathPermission;

    .end local v15           #pa:Landroid/content/pm/PathPermission;
    const/4 v5, 0x1

    move-object v0, v15

    move-object/from16 v1, v16

    move v2, v5

    move-object/from16 v3, v18

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2280
    .restart local v15       #pa:Landroid/content/pm/PathPermission;
    :cond_f
    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v16

    .line 2282
    if-eqz v16, :cond_10

    .line 2283
    new-instance v15, Landroid/content/pm/PathPermission;

    .end local v15           #pa:Landroid/content/pm/PathPermission;
    const/4 v5, 0x2

    move-object v0, v15

    move-object/from16 v1, v16

    move v2, v5

    move-object/from16 v3, v18

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PathPermission;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 2287
    .restart local v15       #pa:Landroid/content/pm/PathPermission;
    :cond_10
    invoke-virtual/range {v19 .. v19}, Landroid/content/res/TypedArray;->recycle()V

    .line 2289
    if-eqz v15, :cond_12

    .line 2290
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    if-nez v5, :cond_11

    .line 2291
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/content/pm/PathPermission;

    iput-object v6, v5, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    .line 2292
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const/4 v6, 0x0

    aput-object v15, v5, v6

    .line 2311
    :goto_3
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2294
    :cond_11
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    array-length v11, v5

    .line 2295
    .restart local v11       #N:I
    add-int/lit8 v5, v11, 0x1

    new-array v13, v5, [Landroid/content/pm/PathPermission;

    .line 2296
    .local v13, newp:[Landroid/content/pm/PathPermission;
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v13, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2297
    aput-object v15, v13, v11

    .line 2298
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    move-object v5, v0

    iput-object v13, v5, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    goto :goto_3

    .line 2302
    .end local v11           #N:I
    .end local v13           #newp:[Landroid/content/pm/PathPermission;
    :cond_12
    const-string v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No path, pathPrefix, or pathPattern for <path-permission>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2315
    .end local v12           #havePerm:Z
    .end local v15           #pa:Landroid/content/pm/PathPermission;
    .end local v16           #path:Ljava/lang/String;
    .end local v17           #permission:Ljava/lang/String;
    .end local v18           #readPermission:Ljava/lang/String;
    .end local v19           #sa:Landroid/content/res/TypedArray;
    .end local v22           #writePermission:Ljava/lang/String;
    :cond_13
    const-string v5, "PackageParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown element under <provider>: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2318
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 2326
    :cond_14
    const/4 v5, 0x1

    goto/16 :goto_1
.end method

.method private parseService(Landroid/content/pm/PackageParser$Package;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Service;
    .locals 21
    .parameter "owner"
    .parameter "res"
    .parameter "parser"
    .parameter "attrs"
    .parameter "flags"
    .parameter "outError"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2332
    sget-object v3, Lcom/android/internal/R$styleable;->AndroidManifestService:[I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 2335
    .local v17, sa:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    if-nez v3, :cond_0

    .line 2336
    new-instance v3, Landroid/content/pm/PackageParser$ParseComponentArgs;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    move-object v9, v0

    const/4 v10, 0x6

    const/4 v11, 0x7

    const/4 v12, 0x4

    move-object/from16 v4, p1

    move-object/from16 v5, p6

    invoke-direct/range {v3 .. v12}, Landroid/content/pm/PackageParser$ParseComponentArgs;-><init>(Landroid/content/pm/PackageParser$Package;[Ljava/lang/String;III[Ljava/lang/String;III)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    .line 2344
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    const-string v4, "<service>"

    iput-object v4, v3, Landroid/content/pm/PackageParser$ParseComponentArgs;->tag:Ljava/lang/String;

    .line 2347
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    move-object/from16 v0, v17

    move-object v1, v3

    iput-object v0, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->sa:Landroid/content/res/TypedArray;

    .line 2348
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    move/from16 v0, p5

    move-object v1, v3

    iput v0, v1, Landroid/content/pm/PackageParser$ParseComponentArgs;->flags:I

    .line 2350
    new-instance v16, Landroid/content/pm/PackageParser$Service;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mParseServiceArgs:Landroid/content/pm/PackageParser$ParseComponentArgs;

    move-object v3, v0

    new-instance v4, Landroid/content/pm/ServiceInfo;

    invoke-direct {v4}, Landroid/content/pm/ServiceInfo;-><init>()V

    move-object/from16 v0, v16

    move-object v1, v3

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Landroid/content/pm/PackageParser$Service;-><init>(Landroid/content/pm/PackageParser$ParseComponentArgs;Landroid/content/pm/ServiceInfo;)V

    .line 2351
    .local v16, s:Landroid/content/pm/PackageParser$Service;
    const/4 v3, 0x0

    aget-object v3, p6, v3

    if-eqz v3, :cond_1

    .line 2352
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 2353
    const/4 v3, 0x0

    .line 2412
    :goto_0
    return-object v3

    .line 2356
    :cond_1
    const/4 v3, 0x5

    move-object/from16 v0, v17

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v18

    .line 2358
    .local v18, setExported:Z
    if-eqz v18, :cond_2

    .line 2359
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object v3, v0

    const/4 v4, 0x5

    const/4 v5, 0x0

    move-object/from16 v0, v17

    move v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Landroid/content/pm/ServiceInfo;->exported:Z

    .line 2363
    :cond_2
    const/4 v3, 0x3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getNonConfigurationString(II)Ljava/lang/String;

    move-result-object v19

    .line 2365
    .local v19, str:Ljava/lang/String;
    if-nez v19, :cond_5

    .line 2366
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object v3, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->permission:Ljava/lang/String;

    iput-object v4, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 2371
    :goto_1
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 2373
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v15

    .line 2376
    .local v15, outerDepth:I
    :cond_3
    :goto_2
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v20

    .local v20, type:I
    const/4 v3, 0x1

    move/from16 v0, v20

    move v1, v3

    if-eq v0, v1, :cond_a

    const/4 v3, 0x3

    move/from16 v0, v20

    move v1, v3

    if-ne v0, v1, :cond_4

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v15, :cond_a

    .line 2378
    :cond_4
    const/4 v3, 0x3

    move/from16 v0, v20

    move v1, v3

    if-eq v0, v1, :cond_3

    const/4 v3, 0x4

    move/from16 v0, v20

    move v1, v3

    if-eq v0, v1, :cond_3

    .line 2382
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "intent-filter"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2383
    new-instance v8, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser$ServiceIntentInfo;-><init>(Landroid/content/pm/PackageParser$Service;)V

    .line 2384
    .local v8, intent:Landroid/content/pm/PackageParser$ServiceIntentInfo;
    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p6

    invoke-direct/range {v3 .. v10}, Landroid/content/pm/PackageParser;->parseIntent(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;ILandroid/content/pm/PackageParser$IntentInfo;[Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_7

    .line 2385
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2368
    .end local v8           #intent:Landroid/content/pm/PackageParser$ServiceIntentInfo;
    .end local v15           #outerDepth:I
    .end local v20           #type:I
    :cond_5
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object v3, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :goto_3
    iput-object v4, v3, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    goto :goto_3

    .line 2388
    .restart local v8       #intent:Landroid/content/pm/PackageParser$ServiceIntentInfo;
    .restart local v15       #outerDepth:I
    .restart local v20       #type:I
    :cond_7
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2389
    .end local v8           #intent:Landroid/content/pm/PackageParser$ServiceIntentInfo;
    :cond_8
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "meta-data"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2390
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    move-object v13, v0

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v14, p6

    invoke-direct/range {v9 .. v14}, Landroid/content/pm/PackageParser;->parseMetaData(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/os/Bundle;[Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/content/pm/PackageParser$Service;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_3

    .line 2392
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2396
    :cond_9
    const-string v3, "PackageParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <service>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 2408
    :cond_a
    if-nez v18, :cond_b

    .line 2409
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    move-object v3, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_c

    const/4 v4, 0x1

    :goto_4
    iput-boolean v4, v3, Landroid/content/pm/ServiceInfo;->exported:Z

    :cond_b
    move-object/from16 v3, v16

    .line 2412
    goto/16 :goto_0

    .line 2409
    :cond_c
    const/4 v4, 0x0

    goto :goto_4
.end method

.method public static setCompatibilityModeEnabled(Z)V
    .locals 0
    .parameter "compatibilityModeEnabled"

    .prologue
    .line 3172
    sput-boolean p0, Landroid/content/pm/PackageParser;->sCompatibilityModeEnabled:Z

    .line 3173
    return-void
.end method

.method public static stringToSignature(Ljava/lang/String;)Landroid/content/pm/Signature;
    .locals 4
    .parameter "str"

    .prologue
    .line 731
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 732
    .local v0, N:I
    new-array v2, v0, [B

    .line 733
    .local v2, sig:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 734
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 733
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 736
    :cond_0
    new-instance v3, Landroid/content/pm/Signature;

    invoke-direct {v3, v2}, Landroid/content/pm/Signature;-><init>([B)V

    return-object v3
.end method

.method private static validateName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .parameter "name"
    .parameter "requiresSeparator"

    .prologue
    .line 624
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 625
    .local v0, N:I
    const/4 v3, 0x0

    .line 626
    .local v3, hasSep:Z
    const/4 v2, 0x1

    .line 627
    .local v2, front:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_7

    .line 628
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 629
    .local v1, c:C
    const/16 v5, 0x61

    if-lt v1, v5, :cond_0

    const/16 v5, 0x7a

    if-le v1, v5, :cond_1

    :cond_0
    const/16 v5, 0x41

    if-lt v1, v5, :cond_3

    const/16 v5, 0x5a

    if-gt v1, v5, :cond_3

    .line 630
    :cond_1
    const/4 v2, 0x0

    .line 627
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 633
    :cond_3
    if-nez v2, :cond_5

    .line 634
    const/16 v5, 0x30

    if-lt v1, v5, :cond_4

    const/16 v5, 0x39

    if-le v1, v5, :cond_2

    :cond_4
    const/16 v5, 0x5f

    if-eq v1, v5, :cond_2

    .line 638
    :cond_5
    const/16 v5, 0x2e

    if-ne v1, v5, :cond_6

    .line 639
    const/4 v3, 0x1

    .line 640
    const/4 v2, 0x1

    .line 641
    goto :goto_1

    .line 643
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad character \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 645
    .end local v1           #c:C
    :goto_2
    return-object v5

    :cond_7
    if-nez v3, :cond_8

    if-nez p1, :cond_9

    :cond_8
    const/4 v5, 0x0

    goto :goto_2

    :cond_9
    const-string v5, "must have at least one \'.\' separator"

    goto :goto_2
.end method


# virtual methods
.method public collectCertificates(Landroid/content/pm/PackageParser$Package;I)Z
    .locals 20
    .parameter "pkg"
    .parameter "flags"

    .prologue
    .line 453
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 456
    const/4 v15, 0x0

    .line 457
    .local v15, readBuffer:[B
    sget-object v18, Landroid/content/pm/PackageParser;->mSync:Ljava/lang/Object;

    monitor-enter v18

    .line 458
    :try_start_0
    sget-object v16, Landroid/content/pm/PackageParser;->mReadBuffer:Ljava/lang/ref/WeakReference;

    .line 459
    .local v16, readBufferRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<[B>;"
    if-eqz v16, :cond_0

    .line 460
    const/16 v17, 0x0

    sput-object v17, Landroid/content/pm/PackageParser;->mReadBuffer:Ljava/lang/ref/WeakReference;

    .line 461
    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, [B

    move-object v15, v0

    .line 463
    :cond_0
    if-nez v15, :cond_1

    .line 464
    const/16 v17, 0x2000

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object v15, v0

    .line 465
    new-instance v16, Ljava/lang/ref/WeakReference;

    .end local v16           #readBufferRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<[B>;"
    move-object/from16 v0, v16

    move-object v1, v15

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 467
    .restart local v16       #readBufferRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<[B>;"
    :cond_1
    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    :try_start_1
    new-instance v12, Ljava/util/jar/JarFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 472
    .local v12, jarFile:Ljava/util/jar/JarFile;
    const/4 v5, 0x0

    .line 474
    .local v5, certs:[Ljava/security/cert/Certificate;
    and-int/lit8 v17, p2, 0x1

    if-eqz v17, :cond_2

    .line 479
    const-string v17, "AndroidManifest.xml"

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v11

    .line 480
    .local v11, jarEntry:Ljava/util/jar/JarEntry;
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v11

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v5

    .line 481
    if-nez v5, :cond_a

    .line 482
    const-string v17, "PackageParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " has no certificates at entry "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "; ignoring!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-virtual {v12}, Ljava/util/jar/JarFile;->close()V

    .line 486
    const/16 v17, -0x67

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 487
    const/16 v17, 0x0

    .line 580
    .end local v5           #certs:[Ljava/security/cert/Certificate;
    .end local v11           #jarEntry:Ljava/util/jar/JarEntry;
    .end local v12           #jarFile:Ljava/util/jar/JarFile;
    :goto_0
    return v17

    .line 467
    .end local v16           #readBufferRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<[B>;"
    :catchall_0
    move-exception v17

    :try_start_2
    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v17

    .line 503
    .restart local v5       #certs:[Ljava/security/cert/Certificate;
    .restart local v12       #jarFile:Ljava/util/jar/JarFile;
    .restart local v16       #readBufferRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<[B>;"
    :cond_2
    :try_start_3
    invoke-virtual {v12}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v7

    .line 504
    .local v7, entries:Ljava/util/Enumeration;
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 505
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/jar/JarEntry;

    .line 506
    .local v13, je:Ljava/util/jar/JarEntry;
    invoke-virtual {v13}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v17

    if-nez v17, :cond_3

    .line 507
    invoke-virtual {v13}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "META-INF/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 508
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/PackageParser;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v14

    .line 515
    .local v14, localCerts:[Ljava/security/cert/Certificate;
    if-nez v14, :cond_4

    .line 516
    const-string v17, "PackageParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " has no certificates at entry "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "; ignoring!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-virtual {v12}, Ljava/util/jar/JarFile;->close()V

    .line 520
    const/16 v17, -0x67

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 521
    const/16 v17, 0x0

    goto :goto_0

    .line 522
    :cond_4
    if-nez v5, :cond_5

    .line 523
    move-object v5, v14

    goto :goto_1

    .line 526
    :cond_5
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    move-object v0, v5

    array-length v0, v0

    move/from16 v17, v0

    move v0, v9

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    .line 527
    const/4 v8, 0x0

    .line 528
    .local v8, found:Z
    const/4 v10, 0x0

    .local v10, j:I
    :goto_3
    move-object v0, v14

    array-length v0, v0

    move/from16 v17, v0

    move v0, v10

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 529
    aget-object v17, v5, v9

    if-eqz v17, :cond_8

    aget-object v17, v5, v9

    aget-object v18, v14, v10

    invoke-virtual/range {v17 .. v18}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 531
    const/4 v8, 0x1

    .line 535
    :cond_6
    if-eqz v8, :cond_7

    move-object v0, v5

    array-length v0, v0

    move/from16 v17, v0

    move-object v0, v14

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    .line 536
    :cond_7
    const-string v17, "PackageParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " has mismatched certificates at entry "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "; ignoring!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual {v12}, Ljava/util/jar/JarFile;->close()V

    .line 540
    const/16 v17, -0x68

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 541
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 528
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 526
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 547
    .end local v7           #entries:Ljava/util/Enumeration;
    .end local v8           #found:Z
    .end local v9           #i:I
    .end local v10           #j:I
    .end local v13           #je:Ljava/util/jar/JarEntry;
    .end local v14           #localCerts:[Ljava/security/cert/Certificate;
    :cond_a
    invoke-virtual {v12}, Ljava/util/jar/JarFile;->close()V

    .line 549
    sget-object v17, Landroid/content/pm/PackageParser;->mSync:Ljava/lang/Object;

    monitor-enter v17
    :try_end_3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 550
    :try_start_4
    sput-object v16, Landroid/content/pm/PackageParser;->mReadBuffer:Ljava/lang/ref/WeakReference;

    .line 551
    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 553
    if-eqz v5, :cond_b

    :try_start_5
    move-object v0, v5

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_b

    .line 554
    array-length v4, v5

    .line 555
    .local v4, N:I
    move-object v0, v5

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    .line 556
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_4
    if-ge v9, v4, :cond_c

    .line 557
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object/from16 v17, v0

    new-instance v18, Landroid/content/pm/Signature;

    aget-object v19, v5, v9

    invoke-virtual/range {v19 .. v19}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v18, v17, v9
    :try_end_5
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    .line 556
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 551
    .end local v4           #N:I
    .end local v9           #i:I
    :catchall_1
    move-exception v18

    :try_start_6
    monitor-exit v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v18
    :try_end_7
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    .line 566
    .end local v5           #certs:[Ljava/security/cert/Certificate;
    .end local v12           #jarFile:Ljava/util/jar/JarFile;
    :catch_0
    move-exception v17

    move-object/from16 v6, v17

    .line 567
    .local v6, e:Ljava/security/cert/CertificateEncodingException;
    const-string v17, "PackageParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception reading "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 568
    const/16 v17, -0x69

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 569
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 561
    .end local v6           #e:Ljava/security/cert/CertificateEncodingException;
    .restart local v5       #certs:[Ljava/security/cert/Certificate;
    .restart local v12       #jarFile:Ljava/util/jar/JarFile;
    :cond_b
    :try_start_8
    const-string v17, "PackageParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Package "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " has no certificates; ignoring!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/16 v17, -0x67

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I
    :try_end_8
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    .line 564
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 570
    .end local v5           #certs:[Ljava/security/cert/Certificate;
    .end local v12           #jarFile:Ljava/util/jar/JarFile;
    :catch_1
    move-exception v17

    move-object/from16 v6, v17

    .line 571
    .local v6, e:Ljava/io/IOException;
    const-string v17, "PackageParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception reading "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 572
    const/16 v17, -0x69

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 573
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 574
    .end local v6           #e:Ljava/io/IOException;
    :catch_2
    move-exception v17

    move-object/from16 v6, v17

    .line 575
    .local v6, e:Ljava/lang/RuntimeException;
    const-string v17, "PackageParser"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception reading "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 576
    const/16 v17, -0x66

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 577
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 580
    .end local v6           #e:Ljava/lang/RuntimeException;
    .restart local v4       #N:I
    .restart local v5       #certs:[Ljava/security/cert/Certificate;
    .restart local v9       #i:I
    .restart local v12       #jarFile:Ljava/util/jar/JarFile;
    :cond_c
    const/16 v17, 0x1

    goto/16 :goto_0
.end method

.method public getParseError()I
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Landroid/content/pm/PackageParser;->mParseError:I

    return v0
.end method

.method public parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;
    .locals 18
    .parameter "sourceFile"
    .parameter "destCodePath"
    .parameter "metrics"
    .parameter "flags"

    .prologue
    .line 367
    const/4 v15, 0x1

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 369
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 370
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z

    move-result v15

    if-nez v15, :cond_0

    .line 371
    const-string v15, "PackageParser"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Skipping dir: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/16 v15, -0x64

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 373
    const/4 v15, 0x0

    .line 449
    :goto_0
    return-object v15

    .line 375
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/content/pm/PackageParser;->isPackageFilename(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_2

    and-int/lit8 v15, p4, 0x4

    if-eqz v15, :cond_2

    .line 377
    and-int/lit8 v15, p4, 0x1

    if-nez v15, :cond_1

    .line 380
    const-string v15, "PackageParser"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Skipping non-package file: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_1
    const/16 v15, -0x64

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 383
    const/4 v15, 0x0

    goto :goto_0

    .line 386
    :cond_2
    and-int/lit8 v15, p4, 0x2

    if-eqz v15, :cond_3

    const-string v15, "PackageParser"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Scanning package: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_3
    const/4 v12, 0x0

    .line 390
    .local v12, parser:Landroid/content/res/XmlResourceParser;
    const/4 v6, 0x0

    .line 391
    .local v6, assmgr:Landroid/content/res/AssetManager;
    const/4 v5, 0x1

    .line 393
    .local v5, assetError:Z
    :try_start_0
    new-instance v7, Landroid/content/res/AssetManager;

    invoke-direct {v7}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 394
    .end local v6           #assmgr:Landroid/content/res/AssetManager;
    .local v7, assmgr:Landroid/content/res/AssetManager;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v7, v15}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v8

    .line 395
    .local v8, cookie:I
    if-eqz v8, :cond_5

    .line 396
    const-string v15, "AndroidManifest.xml"

    invoke-virtual {v7, v8, v15}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v12

    .line 397
    const/4 v5, 0x0

    :goto_1
    move-object v6, v7

    .line 405
    .end local v7           #assmgr:Landroid/content/res/AssetManager;
    .end local v8           #cookie:I
    .restart local v6       #assmgr:Landroid/content/res/AssetManager;
    :goto_2
    if-eqz v5, :cond_6

    .line 406
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/content/res/AssetManager;->close()V

    .line 407
    :cond_4
    const/16 v15, -0x65

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 408
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 399
    .end local v6           #assmgr:Landroid/content/res/AssetManager;
    .restart local v7       #assmgr:Landroid/content/res/AssetManager;
    .restart local v8       #cookie:I
    :cond_5
    :try_start_2
    const-string v15, "PackageParser"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Failed adding asset path:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 401
    .end local v8           #cookie:I
    :catch_0
    move-exception v15

    move-object v9, v15

    move-object v6, v7

    .line 402
    .end local v7           #assmgr:Landroid/content/res/AssetManager;
    .restart local v6       #assmgr:Landroid/content/res/AssetManager;
    .local v9, e:Ljava/lang/Exception;
    :goto_3
    const-string v15, "PackageParser"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Unable to read AndroidManifest.xml of "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 410
    .end local v9           #e:Ljava/lang/Exception;
    :cond_6
    const/4 v15, 0x1

    new-array v11, v15, [Ljava/lang/String;

    .line 411
    .local v11, errorText:[Ljava/lang/String;
    const/4 v13, 0x0

    .line 412
    .local v13, pkg:Landroid/content/pm/PackageParser$Package;
    const/4 v10, 0x0

    .line 415
    .local v10, errorException:Ljava/lang/Exception;
    :try_start_3
    new-instance v14, Landroid/content/res/Resources;

    const/4 v15, 0x0

    move-object v0, v14

    move-object v1, v6

    move-object/from16 v2, p3

    move-object v3, v15

    invoke-direct {v0, v1, v2, v3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 416
    .local v14, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v12

    move/from16 v3, p4

    move-object v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePackage(Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I[Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v13

    .line 423
    .end local v14           #res:Landroid/content/res/Resources;
    :goto_4
    if-nez v13, :cond_9

    .line 424
    if-eqz v10, :cond_8

    .line 425
    const-string v15, "PackageParser"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v10

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 431
    :goto_5
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    .line 432
    invoke-virtual {v6}, Landroid/content/res/AssetManager;->close()V

    .line 433
    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/pm/PackageParser;->mParseError:I

    move v15, v0

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_7

    .line 434
    const/16 v15, -0x6c

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    .line 436
    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 417
    :catch_1
    move-exception v15

    move-object v9, v15

    .line 418
    .restart local v9       #e:Ljava/lang/Exception;
    move-object v10, v9

    .line 419
    const/16 v15, -0x66

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/content/pm/PackageParser;->mParseError:I

    goto :goto_4

    .line 427
    .end local v9           #e:Ljava/lang/Exception;
    :cond_8
    const-string v15, "PackageParser"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " (at "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "): "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x0

    aget-object v17, v11, v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 439
    :cond_9
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    .line 440
    invoke-virtual {v6}, Landroid/content/res/AssetManager;->close()V

    .line 443
    move-object/from16 v0, p2

    move-object v1, v13

    iput-object v0, v1, Landroid/content/pm/PackageParser$Package;->mPath:Ljava/lang/String;

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/PackageParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object v15, v0

    iput-object v15, v13, Landroid/content/pm/PackageParser$Package;->mScanPath:Ljava/lang/String;

    .line 447
    const/4 v15, 0x0

    iput-object v15, v13, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    move-object v15, v13

    .line 449
    goto/16 :goto_0

    .line 401
    .end local v10           #errorException:Ljava/lang/Exception;
    .end local v11           #errorText:[Ljava/lang/String;
    .end local v13           #pkg:Landroid/content/pm/PackageParser$Package;
    :catch_2
    move-exception v15

    move-object v9, v15

    goto/16 :goto_3
.end method

.method public setSeparateProcesses([Ljava/lang/String;)V
    .locals 0
    .parameter "procs"

    .prologue
    .line 173
    iput-object p1, p0, Landroid/content/pm/PackageParser;->mSeparateProcesses:[Ljava/lang/String;

    .line 174
    return-void
.end method
