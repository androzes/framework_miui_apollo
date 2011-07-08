.class public abstract Landroid/content/pm/IPackageManager$Stub;
.super Landroid/os/Binder;
.source "IPackageManager.java"

# interfaces
.implements Landroid/content/pm/IPackageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPackageManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPackageManager"

.field static final TRANSACTION_addPackageToPreferred:I = 0x2a

.field static final TRANSACTION_addPermission:I = 0x10

.field static final TRANSACTION_addPermissionAsync:I = 0x45

.field static final TRANSACTION_addPreferredActivity:I = 0x2d

.field static final TRANSACTION_canonicalToCurrentPackageNames:I = 0x5

.field static final TRANSACTION_checkPermission:I = 0xe

.field static final TRANSACTION_checkSignatures:I = 0x13

.field static final TRANSACTION_checkUidPermission:I = 0xf

.field static final TRANSACTION_checkUidSignatures:I = 0x14

.field static final TRANSACTION_clearApplicationUserData:I = 0x38

.field static final TRANSACTION_clearCustomizedIcons:I = 0x4f

.field static final TRANSACTION_clearPackagePreferredActivities:I = 0x2f

.field static final TRANSACTION_currentToCanonicalPackageNames:I = 0x4

.field static final TRANSACTION_deleteApplicationCacheFiles:I = 0x37

.field static final TRANSACTION_deletePackage:I = 0x28

.field static final TRANSACTION_enterSafeMode:I = 0x3d

.field static final TRANSACTION_finishPackageInstall:I = 0x27

.field static final TRANSACTION_freeStorage:I = 0x36

.field static final TRANSACTION_freeStorageAndNotify:I = 0x35

.field static final TRANSACTION_getActivityInfo:I = 0xb

.field static final TRANSACTION_getAllPermissionGroups:I = 0x9

.field static final TRANSACTION_getApplicationEnabledSetting:I = 0x34

.field static final TRANSACTION_getApplicationInfo:I = 0xa

.field static final TRANSACTION_getComponentEnabledSetting:I = 0x32

.field static final TRANSACTION_getDatabaseStoragePackageList:I = 0x48

.field static final TRANSACTION_getInstallLocation:I = 0x47

.field static final TRANSACTION_getInstalledApplications:I = 0x1f

.field static final TRANSACTION_getInstalledPackages:I = 0x1e

.field static final TRANSACTION_getInstallerPackageName:I = 0x29

.field static final TRANSACTION_getInstrumentationInfo:I = 0x24

.field static final TRANSACTION_getNameForUid:I = 0x16

.field static final TRANSACTION_getPackageGids:I = 0x3

.field static final TRANSACTION_getPackageInfo:I = 0x1

.field static final TRANSACTION_getPackageInstallPath:I = 0x5a

.field static final TRANSACTION_getPackageSizeInfo:I = 0x39

.field static final TRANSACTION_getPackageUid:I = 0x2

.field static final TRANSACTION_getPackagesForUid:I = 0x15

.field static final TRANSACTION_getPermissionGroupInfo:I = 0x8

.field static final TRANSACTION_getPermissionInfo:I = 0x6

.field static final TRANSACTION_getPersistentApplications:I = 0x20

.field static final TRANSACTION_getPreferenceStoragePackageList:I = 0x49

.field static final TRANSACTION_getPreferredActivities:I = 0x30

.field static final TRANSACTION_getPreferredPackages:I = 0x2c

.field static final TRANSACTION_getReceiverInfo:I = 0xc

.field static final TRANSACTION_getServiceInfo:I = 0xd

.field static final TRANSACTION_getSystemAvailableFeatures:I = 0x3b

.field static final TRANSACTION_getSystemSharedLibraryNames:I = 0x3a

.field static final TRANSACTION_getUidForSharedUser:I = 0x17

.field static final TRANSACTION_hasSystemFeature:I = 0x3c

.field static final TRANSACTION_hasSystemUidErrors:I = 0x40

.field static final TRANSACTION_installPackage:I = 0x26

.field static final TRANSACTION_isProtectedBroadcast:I = 0x12

.field static final TRANSACTION_isSafeMode:I = 0x3e

.field static final TRANSACTION_movePackage:I = 0x44

.field static final TRANSACTION_nextPackageToClean:I = 0x43

.field static final TRANSACTION_performDexOpt:I = 0x41

.field static final TRANSACTION_queryContentProviders:I = 0x23

.field static final TRANSACTION_queryInstrumentation:I = 0x25

.field static final TRANSACTION_queryIntentActivities:I = 0x19

.field static final TRANSACTION_queryIntentActivityOptions:I = 0x1a

.field static final TRANSACTION_queryIntentReceivers:I = 0x1b

.field static final TRANSACTION_queryIntentServices:I = 0x1d

.field static final TRANSACTION_queryPermissionsByGroup:I = 0x7

.field static final TRANSACTION_querySyncProviders:I = 0x22

.field static final TRANSACTION_removePackageFromPreferred:I = 0x2b

.field static final TRANSACTION_removePermission:I = 0x11

.field static final TRANSACTION_replacePreferredActivity:I = 0x2e

.field static final TRANSACTION_resolveContentProvider:I = 0x21

.field static final TRANSACTION_resolveIntent:I = 0x18

.field static final TRANSACTION_resolveService:I = 0x1c

.field static final TRANSACTION_saveCustomizedIconBitmap:I = 0x5b

.field static final TRANSACTION_setApplicationEnabledSetting:I = 0x33

.field static final TRANSACTION_setComponentEnabledSetting:I = 0x31

.field static final TRANSACTION_setInstallLocation:I = 0x46

.field static final TRANSACTION_systemReady:I = 0x3f

.field static final TRANSACTION_updateExternalMediaStatus:I = 0x42


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.content.pm.IPackageManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IPackageManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v1, 0x0

    .line 36
    :goto_0
    return-object v1

    .line 32
    :cond_0
    const-string v1, "android.content.pm.IPackageManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/IPackageManager;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Landroid/content/pm/IPackageManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 36
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/content/pm/IPackageManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IPackageManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 27
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 1034
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 48
    :sswitch_0
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/4 v5, 0x1

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 57
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 58
    .local v7, _arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v18

    .line 59
    .local v18, _result:Landroid/content/pm/PackageInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v18, :cond_0

    .line 61
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 67
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 65
    :cond_0
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 71
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/PackageInfo;
    :sswitch_2
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 74
    .restart local v6       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPackageUid(Ljava/lang/String;)I

    move-result v18

    .line 75
    .local v18, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    const/4 v5, 0x1

    goto :goto_0

    .line 81
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v18           #_result:I
    :sswitch_3
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 84
    .restart local v6       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPackageGids(Ljava/lang/String;)[I

    move-result-object v18

    .line 85
    .local v18, _result:[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 87
    const/4 v5, 0x1

    goto :goto_0

    .line 91
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v18           #_result:[I
    :sswitch_4
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, _arg0:[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 95
    .local v18, _result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 97
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 101
    .end local v6           #_arg0:[Ljava/lang/String;
    .end local v18           #_result:[Ljava/lang/String;
    :sswitch_5
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v6

    .line 104
    .restart local v6       #_arg0:[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 105
    .restart local v18       #_result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 107
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 111
    .end local v6           #_arg0:[Ljava/lang/String;
    .end local v18           #_result:[Ljava/lang/String;
    :sswitch_6
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 115
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 116
    .restart local v7       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v18

    .line 117
    .local v18, _result:Landroid/content/pm/PermissionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    if-eqz v18, :cond_1

    .line 119
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PermissionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 125
    :goto_2
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 123
    :cond_1
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 129
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/PermissionInfo;
    :sswitch_7
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 133
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 134
    .restart local v7       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v23

    .line 135
    .local v23, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 137
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 141
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:I
    .end local v23           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :sswitch_8
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 145
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 146
    .restart local v7       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v18

    .line 147
    .local v18, _result:Landroid/content/pm/PermissionGroupInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v18, :cond_2

    .line 149
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PermissionGroupInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 155
    :goto_3
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 153
    :cond_2
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 159
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/PermissionGroupInfo;
    :sswitch_9
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 162
    .local v6, _arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getAllPermissionGroups(I)Ljava/util/List;

    move-result-object v22

    .line 163
    .local v22, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 165
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 169
    .end local v6           #_arg0:I
    .end local v22           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PermissionGroupInfo;>;"
    :sswitch_a
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 173
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 174
    .restart local v7       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v18

    .line 175
    .local v18, _result:Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v18, :cond_3

    .line 177
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 183
    :goto_4
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 181
    :cond_3
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 187
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/ApplicationInfo;
    :sswitch_b
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    .line 190
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 196
    .local v6, _arg0:Landroid/content/ComponentName;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 197
    .restart local v7       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v18

    .line 198
    .local v18, _result:Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    if-eqz v18, :cond_5

    .line 200
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 206
    :goto_6
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 193
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/ActivityInfo;
    :cond_4
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/ComponentName;
    goto :goto_5

    .line 204
    .restart local v7       #_arg1:I
    .restart local v18       #_result:Landroid/content/pm/ActivityInfo;
    :cond_5
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 210
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/ActivityInfo;
    :sswitch_c
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    .line 213
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 219
    .restart local v6       #_arg0:Landroid/content/ComponentName;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 220
    .restart local v7       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v18

    .line 221
    .restart local v18       #_result:Landroid/content/pm/ActivityInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    if-eqz v18, :cond_7

    .line 223
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 229
    :goto_8
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 216
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/ActivityInfo;
    :cond_6
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/ComponentName;
    goto :goto_7

    .line 227
    .restart local v7       #_arg1:I
    .restart local v18       #_result:Landroid/content/pm/ActivityInfo;
    :cond_7
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 233
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/ActivityInfo;
    :sswitch_d
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    .line 236
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 242
    .restart local v6       #_arg0:Landroid/content/ComponentName;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 243
    .restart local v7       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v18

    .line 244
    .local v18, _result:Landroid/content/pm/ServiceInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    if-eqz v18, :cond_9

    .line 246
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 252
    :goto_a
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 239
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/ServiceInfo;
    :cond_8
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/ComponentName;
    goto :goto_9

    .line 250
    .restart local v7       #_arg1:I
    .restart local v18       #_result:Landroid/content/pm/ServiceInfo;
    :cond_9
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 256
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/ServiceInfo;
    :sswitch_e
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 260
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 261
    .local v7, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 262
    .local v18, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 268
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v18           #_result:I
    :sswitch_f
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 272
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 273
    .local v7, _arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->checkUidPermission(Ljava/lang/String;I)I

    move-result v18

    .line 274
    .restart local v18       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 280
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:I
    .end local v18           #_result:I
    :sswitch_10
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    .line 283
    sget-object v5, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PermissionInfo;

    .line 288
    .local v6, _arg0:Landroid/content/pm/PermissionInfo;
    :goto_b
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->addPermission(Landroid/content/pm/PermissionInfo;)Z

    move-result v18

    .line 289
    .local v18, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    if-eqz v18, :cond_b

    const/4 v5, 0x1

    :goto_c
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 286
    .end local v6           #_arg0:Landroid/content/pm/PermissionInfo;
    .end local v18           #_result:Z
    :cond_a
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/pm/PermissionInfo;
    goto :goto_b

    .line 290
    .restart local v18       #_result:Z
    :cond_b
    const/4 v5, 0x0

    goto :goto_c

    .line 295
    .end local v6           #_arg0:Landroid/content/pm/PermissionInfo;
    .end local v18           #_result:Z
    :sswitch_11
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 298
    .local v6, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->removePermission(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 304
    .end local v6           #_arg0:Ljava/lang/String;
    :sswitch_12
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 307
    .restart local v6       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->isProtectedBroadcast(Ljava/lang/String;)Z

    move-result v18

    .line 308
    .restart local v18       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    if-eqz v18, :cond_c

    const/4 v5, 0x1

    :goto_d
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 309
    :cond_c
    const/4 v5, 0x0

    goto :goto_d

    .line 314
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v18           #_result:Z
    :sswitch_13
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 318
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 319
    .local v7, _arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 320
    .local v18, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 326
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v18           #_result:I
    :sswitch_14
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 330
    .local v6, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 331
    .local v7, _arg1:I
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->checkUidSignatures(II)I

    move-result v18

    .line 332
    .restart local v18       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 338
    .end local v6           #_arg0:I
    .end local v7           #_arg1:I
    .end local v18           #_result:I
    :sswitch_15
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 341
    .restart local v6       #_arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v18

    .line 342
    .local v18, _result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 344
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 348
    .end local v6           #_arg0:I
    .end local v18           #_result:[Ljava/lang/String;
    :sswitch_16
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 351
    .restart local v6       #_arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getNameForUid(I)Ljava/lang/String;

    move-result-object v18

    .line 352
    .local v18, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 354
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 358
    .end local v6           #_arg0:I
    .end local v18           #_result:Ljava/lang/String;
    :sswitch_17
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 361
    .local v6, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getUidForSharedUser(Ljava/lang/String;)I

    move-result v18

    .line 362
    .local v18, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 363
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 368
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v18           #_result:I
    :sswitch_18
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    .line 371
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 377
    .local v6, _arg0:Landroid/content/Intent;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 379
    .local v7, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 380
    .local v8, _arg2:I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v18

    .line 381
    .local v18, _result:Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    if-eqz v18, :cond_e

    .line 383
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 389
    :goto_f
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 374
    .end local v6           #_arg0:Landroid/content/Intent;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:I
    .end local v18           #_result:Landroid/content/pm/ResolveInfo;
    :cond_d
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/Intent;
    goto :goto_e

    .line 387
    .restart local v7       #_arg1:Ljava/lang/String;
    .restart local v8       #_arg2:I
    .restart local v18       #_result:Landroid/content/pm/ResolveInfo;
    :cond_e
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_f

    .line 393
    .end local v6           #_arg0:Landroid/content/Intent;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:I
    .end local v18           #_result:Landroid/content/pm/ResolveInfo;
    :sswitch_19
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    .line 396
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 402
    .restart local v6       #_arg0:Landroid/content/Intent;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 404
    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 405
    .restart local v8       #_arg2:I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v25

    .line 406
    .local v25, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 408
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 399
    .end local v6           #_arg0:Landroid/content/Intent;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:I
    .end local v25           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_f
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/Intent;
    goto :goto_10

    .line 412
    .end local v6           #_arg0:Landroid/content/Intent;
    :sswitch_1a
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    .line 415
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 421
    .local v6, _arg0:Landroid/content/ComponentName;
    :goto_11
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/content/Intent;

    .line 423
    .local v7, _arg1:[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    .line 425
    .local v8, _arg2:[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_11

    .line 426
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 432
    .local v9, _arg3:Landroid/content/Intent;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 434
    .local v10, _arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, _arg5:I
    move-object/from16 v5, p0

    .line 435
    invoke-virtual/range {v5 .. v11}, Landroid/content/pm/IPackageManager$Stub;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v25

    .line 436
    .restart local v25       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 438
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 418
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_arg1:[Landroid/content/Intent;
    .end local v8           #_arg2:[Ljava/lang/String;
    .end local v9           #_arg3:Landroid/content/Intent;
    .end local v10           #_arg4:Ljava/lang/String;
    .end local v11           #_arg5:I
    .end local v25           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_10
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/ComponentName;
    goto :goto_11

    .line 429
    .restart local v7       #_arg1:[Landroid/content/Intent;
    .restart local v8       #_arg2:[Ljava/lang/String;
    :cond_11
    const/4 v9, 0x0

    .restart local v9       #_arg3:Landroid/content/Intent;
    goto :goto_12

    .line 442
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_arg1:[Landroid/content/Intent;
    .end local v8           #_arg2:[Ljava/lang/String;
    .end local v9           #_arg3:Landroid/content/Intent;
    :sswitch_1b
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    .line 445
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 451
    .local v6, _arg0:Landroid/content/Intent;
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 453
    .local v7, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 454
    .local v8, _arg2:I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v25

    .line 455
    .restart local v25       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 457
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 448
    .end local v6           #_arg0:Landroid/content/Intent;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:I
    .end local v25           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_12
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/Intent;
    goto :goto_13

    .line 461
    .end local v6           #_arg0:Landroid/content/Intent;
    :sswitch_1c
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    .line 464
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 470
    .restart local v6       #_arg0:Landroid/content/Intent;
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 472
    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 473
    .restart local v8       #_arg2:I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->resolveService(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v18

    .line 474
    .restart local v18       #_result:Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    if-eqz v18, :cond_14

    .line 476
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 482
    :goto_15
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 467
    .end local v6           #_arg0:Landroid/content/Intent;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:I
    .end local v18           #_result:Landroid/content/pm/ResolveInfo;
    :cond_13
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/Intent;
    goto :goto_14

    .line 480
    .restart local v7       #_arg1:Ljava/lang/String;
    .restart local v8       #_arg2:I
    .restart local v18       #_result:Landroid/content/pm/ResolveInfo;
    :cond_14
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_15

    .line 486
    .end local v6           #_arg0:Landroid/content/Intent;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:I
    .end local v18           #_result:Landroid/content/pm/ResolveInfo;
    :sswitch_1d
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    .line 489
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    .line 495
    .restart local v6       #_arg0:Landroid/content/Intent;
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 497
    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 498
    .restart local v8       #_arg2:I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v25

    .line 499
    .restart local v25       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 501
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 492
    .end local v6           #_arg0:Landroid/content/Intent;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:I
    .end local v25           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_15
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/Intent;
    goto :goto_16

    .line 505
    .end local v6           #_arg0:Landroid/content/Intent;
    :sswitch_1e
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 508
    .local v6, _arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v21

    .line 509
    .local v21, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 511
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 515
    .end local v6           #_arg0:I
    .end local v21           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :sswitch_1f
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 518
    .restart local v6       #_arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v19

    .line 519
    .local v19, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 521
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 525
    .end local v6           #_arg0:I
    .end local v19           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :sswitch_20
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 528
    .restart local v6       #_arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPersistentApplications(I)Ljava/util/List;

    move-result-object v19

    .line 529
    .restart local v19       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 531
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 535
    .end local v6           #_arg0:I
    .end local v19           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :sswitch_21
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 539
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 540
    .local v7, _arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v18

    .line 541
    .local v18, _result:Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 542
    if-eqz v18, :cond_16

    .line 543
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 549
    :goto_17
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 547
    :cond_16
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 553
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/ProviderInfo;
    :sswitch_22
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v15

    .line 557
    .local v15, _arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    .line 558
    .local v17, _arg1:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->querySyncProviders(Ljava/util/List;Ljava/util/List;)V

    .line 559
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    move-object/from16 v0, p3

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 561
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 562
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 566
    .end local v15           #_arg0:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v17           #_arg1:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :sswitch_23
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 570
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 572
    .restart local v7       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 573
    .restart local v8       #_arg2:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->queryContentProviders(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v24

    .line 574
    .local v24, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 576
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 580
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:I
    .end local v8           #_arg2:I
    .end local v24           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    :sswitch_24
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_17

    .line 583
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 589
    .local v6, _arg0:Landroid/content/ComponentName;
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 590
    .restart local v7       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v18

    .line 591
    .local v18, _result:Landroid/content/pm/InstrumentationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    if-eqz v18, :cond_18

    .line 593
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/InstrumentationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 599
    :goto_19
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 586
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/InstrumentationInfo;
    :cond_17
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/ComponentName;
    goto :goto_18

    .line 597
    .restart local v7       #_arg1:I
    .restart local v18       #_result:Landroid/content/pm/InstrumentationInfo;
    :cond_18
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_19

    .line 603
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_arg1:I
    .end local v18           #_result:Landroid/content/pm/InstrumentationInfo;
    :sswitch_25
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 607
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 608
    .restart local v7       #_arg1:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v20

    .line 609
    .local v20, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 611
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 615
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:I
    .end local v20           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/InstrumentationInfo;>;"
    :sswitch_26
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    .line 618
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    .line 624
    .local v6, _arg0:Landroid/net/Uri;
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageInstallObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageInstallObserver;

    move-result-object v7

    .line 626
    .local v7, _arg1:Landroid/content/pm/IPackageInstallObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 628
    .restart local v8       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 629
    .local v9, _arg3:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 630
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 621
    .end local v6           #_arg0:Landroid/net/Uri;
    .end local v7           #_arg1:Landroid/content/pm/IPackageInstallObserver;
    .end local v8           #_arg2:I
    .end local v9           #_arg3:Ljava/lang/String;
    :cond_19
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/net/Uri;
    goto :goto_1a

    .line 635
    .end local v6           #_arg0:Landroid/net/Uri;
    :sswitch_27
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 638
    .local v6, _arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->finishPackageInstall(I)V

    .line 639
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 640
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 644
    .end local v6           #_arg0:I
    :sswitch_28
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 648
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageDeleteObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver;

    move-result-object v7

    .line 650
    .local v7, _arg1:Landroid/content/pm/IPackageDeleteObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 651
    .restart local v8       #_arg2:I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 652
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 657
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Landroid/content/pm/IPackageDeleteObserver;
    .end local v8           #_arg2:I
    :sswitch_29
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 660
    .restart local v6       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 661
    .local v18, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 663
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 667
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v18           #_result:Ljava/lang/String;
    :sswitch_2a
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 669
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 670
    .restart local v6       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->addPackageToPreferred(Ljava/lang/String;)V

    .line 671
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 676
    .end local v6           #_arg0:Ljava/lang/String;
    :sswitch_2b
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 679
    .restart local v6       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->removePackageFromPreferred(Ljava/lang/String;)V

    .line 680
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 685
    .end local v6           #_arg0:Ljava/lang/String;
    :sswitch_2c
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 687
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 688
    .local v6, _arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPreferredPackages(I)Ljava/util/List;

    move-result-object v21

    .line 689
    .restart local v21       #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 691
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 695
    .end local v6           #_arg0:I
    .end local v21           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :sswitch_2d
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 697
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1a

    .line 698
    sget-object v5, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/IntentFilter;

    .line 704
    .local v6, _arg0:Landroid/content/IntentFilter;
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 706
    .local v7, _arg1:I
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/content/ComponentName;

    .line 708
    .local v8, _arg2:[Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b

    .line 709
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    .line 714
    .local v9, _arg3:Landroid/content/ComponentName;
    :goto_1c
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 715
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 701
    .end local v6           #_arg0:Landroid/content/IntentFilter;
    .end local v7           #_arg1:I
    .end local v8           #_arg2:[Landroid/content/ComponentName;
    .end local v9           #_arg3:Landroid/content/ComponentName;
    :cond_1a
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/IntentFilter;
    goto :goto_1b

    .line 712
    .restart local v7       #_arg1:I
    .restart local v8       #_arg2:[Landroid/content/ComponentName;
    :cond_1b
    const/4 v9, 0x0

    .restart local v9       #_arg3:Landroid/content/ComponentName;
    goto :goto_1c

    .line 720
    .end local v6           #_arg0:Landroid/content/IntentFilter;
    .end local v7           #_arg1:I
    .end local v8           #_arg2:[Landroid/content/ComponentName;
    .end local v9           #_arg3:Landroid/content/ComponentName;
    :sswitch_2e
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 722
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c

    .line 723
    sget-object v5, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/IntentFilter;

    .line 729
    .restart local v6       #_arg0:Landroid/content/IntentFilter;
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 731
    .restart local v7       #_arg1:I
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/content/ComponentName;

    .line 733
    .restart local v8       #_arg2:[Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d

    .line 734
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    .line 739
    .restart local v9       #_arg3:Landroid/content/ComponentName;
    :goto_1e
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/IPackageManager$Stub;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 740
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 726
    .end local v6           #_arg0:Landroid/content/IntentFilter;
    .end local v7           #_arg1:I
    .end local v8           #_arg2:[Landroid/content/ComponentName;
    .end local v9           #_arg3:Landroid/content/ComponentName;
    :cond_1c
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/IntentFilter;
    goto :goto_1d

    .line 737
    .restart local v7       #_arg1:I
    .restart local v8       #_arg2:[Landroid/content/ComponentName;
    :cond_1d
    const/4 v9, 0x0

    .restart local v9       #_arg3:Landroid/content/ComponentName;
    goto :goto_1e

    .line 745
    .end local v6           #_arg0:Landroid/content/IntentFilter;
    .end local v7           #_arg1:I
    .end local v8           #_arg2:[Landroid/content/ComponentName;
    .end local v9           #_arg3:Landroid/content/ComponentName;
    :sswitch_2f
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 748
    .local v6, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 749
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 754
    .end local v6           #_arg0:Ljava/lang/String;
    :sswitch_30
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 758
    .local v14, _arg0:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 760
    .local v16, _arg1:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 761
    .local v8, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, v16

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    move-result v18

    .line 762
    .local v18, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 763
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 764
    move-object/from16 v0, p3

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 765
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 766
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 770
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v14           #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    .end local v16           #_arg1:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    .end local v18           #_result:I
    :sswitch_31
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 772
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1e

    .line 773
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 779
    .local v6, _arg0:Landroid/content/ComponentName;
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 781
    .restart local v7       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 782
    .local v8, _arg2:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 783
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 776
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_arg1:I
    .end local v8           #_arg2:I
    :cond_1e
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/ComponentName;
    goto :goto_1f

    .line 788
    .end local v6           #_arg0:Landroid/content/ComponentName;
    :sswitch_32
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 790
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1f

    .line 791
    sget-object v5, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    .line 796
    .restart local v6       #_arg0:Landroid/content/ComponentName;
    :goto_20
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v18

    .line 797
    .restart local v18       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 798
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 799
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 794
    .end local v6           #_arg0:Landroid/content/ComponentName;
    .end local v18           #_result:I
    :cond_1f
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/ComponentName;
    goto :goto_20

    .line 803
    .end local v6           #_arg0:Landroid/content/ComponentName;
    :sswitch_33
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 805
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 807
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 809
    .restart local v7       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 810
    .restart local v8       #_arg2:I
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 811
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 812
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 816
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:I
    .end local v8           #_arg2:I
    :sswitch_34
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 819
    .restart local v6       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v18

    .line 820
    .restart local v18       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 821
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 822
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 826
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v18           #_result:I
    :sswitch_35
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 828
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 830
    .local v12, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v7

    .line 831
    .local v7, _arg1:Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    move-wide v1, v12

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V

    .line 832
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 837
    .end local v7           #_arg1:Landroid/content/pm/IPackageDataObserver;
    .end local v12           #_arg0:J
    :sswitch_36
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 839
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 841
    .restart local v12       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_20

    .line 842
    sget-object v5, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/IntentSender;

    .line 847
    .local v7, _arg1:Landroid/content/IntentSender;
    :goto_21
    move-object/from16 v0, p0

    move-wide v1, v12

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->freeStorage(JLandroid/content/IntentSender;)V

    .line 848
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 845
    .end local v7           #_arg1:Landroid/content/IntentSender;
    :cond_20
    const/4 v7, 0x0

    .restart local v7       #_arg1:Landroid/content/IntentSender;
    goto :goto_21

    .line 853
    .end local v7           #_arg1:Landroid/content/IntentSender;
    .end local v12           #_arg0:J
    :sswitch_37
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 855
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 857
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v7

    .line 858
    .local v7, _arg1:Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 859
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 864
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Landroid/content/pm/IPackageDataObserver;
    :sswitch_38
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 866
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 868
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v7

    .line 869
    .restart local v7       #_arg1:Landroid/content/pm/IPackageDataObserver;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    .line 870
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 871
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 875
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Landroid/content/pm/IPackageDataObserver;
    :sswitch_39
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 877
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 879
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageStatsObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageStatsObserver;

    move-result-object v7

    .line 880
    .local v7, _arg1:Landroid/content/pm/IPackageStatsObserver;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 881
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 886
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Landroid/content/pm/IPackageStatsObserver;
    :sswitch_3a
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 887
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v18

    .line 888
    .local v18, _result:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 889
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 890
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 894
    .end local v18           #_result:[Ljava/lang/String;
    :sswitch_3b
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 895
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v18

    .line 896
    .local v18, _result:[Landroid/content/pm/FeatureInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 897
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 898
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 902
    .end local v18           #_result:[Landroid/content/pm/FeatureInfo;
    :sswitch_3c
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 904
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 905
    .restart local v6       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v18

    .line 906
    .local v18, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 907
    if-eqz v18, :cond_21

    const/4 v5, 0x1

    :goto_22
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 908
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 907
    :cond_21
    const/4 v5, 0x0

    goto :goto_22

    .line 912
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v18           #_result:Z
    :sswitch_3d
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 913
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->enterSafeMode()V

    .line 914
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 919
    :sswitch_3e
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 920
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->isSafeMode()Z

    move-result v18

    .line 921
    .restart local v18       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    if-eqz v18, :cond_22

    const/4 v5, 0x1

    :goto_23
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 923
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 922
    :cond_22
    const/4 v5, 0x0

    goto :goto_23

    .line 927
    .end local v18           #_result:Z
    :sswitch_3f
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 928
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->systemReady()V

    .line 929
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 930
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 934
    :sswitch_40
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 935
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->hasSystemUidErrors()Z

    move-result v18

    .line 936
    .restart local v18       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 937
    if-eqz v18, :cond_23

    const/4 v5, 0x1

    :goto_24
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 938
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 937
    :cond_23
    const/4 v5, 0x0

    goto :goto_24

    .line 942
    .end local v18           #_result:Z
    :sswitch_41
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 944
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 945
    .restart local v6       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->performDexOpt(Ljava/lang/String;)Z

    move-result v18

    .line 946
    .restart local v18       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 947
    if-eqz v18, :cond_24

    const/4 v5, 0x1

    :goto_25
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 948
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 947
    :cond_24
    const/4 v5, 0x0

    goto :goto_25

    .line 952
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v18           #_result:Z
    :sswitch_42
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 954
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_25

    const/4 v5, 0x1

    move v6, v5

    .line 956
    .local v6, _arg0:Z
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_26

    const/4 v5, 0x1

    move v7, v5

    .line 957
    .local v7, _arg1:Z
    :goto_27
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->updateExternalMediaStatus(ZZ)V

    .line 958
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 959
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 954
    .end local v6           #_arg0:Z
    .end local v7           #_arg1:Z
    :cond_25
    const/4 v5, 0x0

    move v6, v5

    goto :goto_26

    .line 956
    .restart local v6       #_arg0:Z
    :cond_26
    const/4 v5, 0x0

    move v7, v5

    goto :goto_27

    .line 963
    .end local v6           #_arg0:Z
    :sswitch_43
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 965
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 966
    .local v6, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->nextPackageToClean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 967
    .local v18, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 969
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 973
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v18           #_result:Ljava/lang/String;
    :sswitch_44
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 975
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 977
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageMoveObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageMoveObserver;

    move-result-object v7

    .line 979
    .local v7, _arg1:Landroid/content/pm/IPackageMoveObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 980
    .restart local v8       #_arg2:I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager$Stub;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    .line 981
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 986
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Landroid/content/pm/IPackageMoveObserver;
    .end local v8           #_arg2:I
    :sswitch_45
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 988
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_27

    .line 989
    sget-object v5, Landroid/content/pm/PermissionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PermissionInfo;

    .line 994
    .local v6, _arg0:Landroid/content/pm/PermissionInfo;
    :goto_28
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z

    move-result v18

    .line 995
    .local v18, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 996
    if-eqz v18, :cond_28

    const/4 v5, 0x1

    :goto_29
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 997
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 992
    .end local v6           #_arg0:Landroid/content/pm/PermissionInfo;
    .end local v18           #_result:Z
    :cond_27
    const/4 v6, 0x0

    .restart local v6       #_arg0:Landroid/content/pm/PermissionInfo;
    goto :goto_28

    .line 996
    .restart local v18       #_result:Z
    :cond_28
    const/4 v5, 0x0

    goto :goto_29

    .line 1001
    .end local v6           #_arg0:Landroid/content/pm/PermissionInfo;
    .end local v18           #_result:Z
    :sswitch_46
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1003
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1004
    .local v6, _arg0:I
    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->setInstallLocation(I)Z

    move-result v18

    .line 1005
    .restart local v18       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1006
    if-eqz v18, :cond_29

    const/4 v5, 0x1

    :goto_2a
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1007
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1006
    :cond_29
    const/4 v5, 0x0

    goto :goto_2a

    .line 1011
    .end local v6           #_arg0:I
    .end local v18           #_result:Z
    :sswitch_47
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1012
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getInstallLocation()I

    move-result v18

    .line 1013
    .local v18, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1014
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1015
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1019
    .end local v18           #_result:I
    :sswitch_48
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1020
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getDatabaseStoragePackageList()Ljava/util/List;

    move-result-object v26

    .line 1021
    .local v26, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1022
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1023
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1027
    .end local v26           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_49
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1028
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IPackageManager$Stub;->getPreferenceStoragePackageList()Ljava/util/List;

    move-result-object v26

    .line 1029
    .restart local v26       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1030
    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1031
    const/4 v5, 0x1

    goto/16 :goto_0

    #akki:
    :sswitch_4a
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1021
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1022
    .local v6, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    .line 1023
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1024
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1028
    .end local v6           #_arg0:Ljava/lang/String;
    :sswitch_4b
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1047
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1048
    .restart local v6       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/pm/IPackageManager$Stub;->getPackageInstallPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1059
    .local v18, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1060
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :sswitch_4c
    const-string v5, "android.content.pm.IPackageManager"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1030
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1032
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2c

    .line 1033
    sget-object v5, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    .line 1038
    .local v7, _arg1:Landroid/graphics/Bitmap;
    :goto_2d
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageManager$Stub;->saveCustomizedIconBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1039
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1040
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1036
    .end local v7           #_arg1:Landroid/graphics/Bitmap;
    :cond_2c
    const/4 v7, 0x0

    .restart local v7       #_arg1:Landroid/graphics/Bitmap;
    goto :goto_2d

    .line 1045
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7       

    .line 44
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4f -> :sswitch_4a
        0x5a -> :sswitch_4b
        0x5b -> :sswitch_4c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
