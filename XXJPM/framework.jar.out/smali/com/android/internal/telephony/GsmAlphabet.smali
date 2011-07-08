.class public Lcom/android/internal/telephony/GsmAlphabet;
.super Ljava/lang/Object;
.source "GsmAlphabet.java"


# static fields
.field public static final GSM_EXTENDED_ESCAPE:B = 0x1bt

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final charToGsm:Landroid/util/SparseIntArray;

.field private static final charToGsmExtended:Landroid/util/SparseIntArray;

.field private static final charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

.field private static final charToGsmSpanishExtended:Landroid/util/SparseIntArray;

.field private static final charToGsmTurkishExtended:Landroid/util/SparseIntArray;

.field private static final gsmExtendedToChar:Landroid/util/SparseIntArray;

.field private static final gsmPortugueseExtendedToChar:Landroid/util/SparseIntArray;

.field private static final gsmSpanishExtendedToChar:Landroid/util/SparseIntArray;

.field private static final gsmToChar:Landroid/util/SparseIntArray;

.field private static final gsmTurkishExtendedToChar:Landroid/util/SparseIntArray;

.field private static sGsmSpaceChar:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/16 v11, 0x47

    const/16 v10, 0x41

    const/16 v9, 0xe7

    const/16 v8, 0x69

    const/16 v7, 0x49

    .line 1124
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    .line 1125
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    .line 1126
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    .line 1127
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    .line 1130
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    .line 1131
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/GsmAlphabet;->gsmTurkishExtendedToChar:Landroid/util/SparseIntArray;

    .line 1134
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    .line 1135
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/GsmAlphabet;->gsmSpanishExtendedToChar:Landroid/util/SparseIntArray;

    .line 1137
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    .line 1138
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v4, Lcom/android/internal/telephony/GsmAlphabet;->gsmPortugueseExtendedToChar:Landroid/util/SparseIntArray;

    .line 1142
    const/4 v0, 0x0

    .line 1144
    .local v0, i:I
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x40

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1145
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xa3

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1146
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x24

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1147
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xa5

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1148
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe8

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1149
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1150
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xf9

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1151
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xec

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1152
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xf2

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1153
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xc7

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1154
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xa

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1155
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xd8

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1156
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xf8

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1157
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xd

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1158
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xc5

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1159
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe5

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1161
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x394

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1162
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x5f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1163
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1164
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x393

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1165
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x39b

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1166
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1167
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a0

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1168
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a8

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1169
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a3

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1170
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x398

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1171
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x39e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1172
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const v5, 0xffff

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1173
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xc6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1174
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe6

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1175
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xdf

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1176
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xc9

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1178
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x20

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1179
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x21

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1180
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x22

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1181
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x23

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1182
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xa4

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1183
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x25

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1184
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x26

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1185
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x27

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1186
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x28

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1187
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x29

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1188
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x2a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1189
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x2b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1190
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x2c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1191
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x2d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1192
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x2e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1193
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x2f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1195
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x30

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1196
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x31

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1197
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x32

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1198
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x33

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1199
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x34

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1200
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x35

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1201
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x36

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1202
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x37

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1203
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x38

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1204
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x39

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1205
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1206
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1207
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1208
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1209
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1210
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x3f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1212
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xa1

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1213
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v10, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1214
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x42

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1215
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x43

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1216
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x44

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1217
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x45

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1218
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x46

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1219
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v11, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1220
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x48

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1221
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1222
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x4a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1223
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x4b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1224
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x4c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1225
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x4d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1226
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x4e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1227
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x4f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1229
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x50

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1230
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x51

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1231
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x52

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1232
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x53

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1233
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x54

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1234
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x55

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1235
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x56

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1236
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x57

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1237
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x58

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1238
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x59

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1239
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x5a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1240
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xc4

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1241
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xd6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1242
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xd1

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1243
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xdc

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1244
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xa7

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1246
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xbf

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1247
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x61

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1248
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x62

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1249
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x63

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1250
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x64

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1251
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x65

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1252
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x66

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1253
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x67

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1254
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x68

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1255
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1256
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x6a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1257
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x6b

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1258
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x6c

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1259
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x6d

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1260
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x6e

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1261
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x6f

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1263
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x70

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1264
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x71

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1265
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x72

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1266
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x73

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1267
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x74

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1268
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x75

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1269
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x76

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1270
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x77

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1271
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x78

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1272
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x79

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1273
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x7a

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1274
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe4

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1275
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xf6

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1276
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xf1

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1277
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xfc

    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .restart local v1       #i:I
    invoke-virtual {v4, v5, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 1278
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0xe0

    add-int/lit8 v0, v1, 0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    invoke-virtual {v4, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 1281
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xc

    const/16 v6, 0xa

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1282
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x5e

    const/16 v6, 0x14

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1283
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x7b

    const/16 v6, 0x28

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1284
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x7d

    const/16 v6, 0x29

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1285
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x5c

    const/16 v6, 0x2f

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1286
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x5b

    const/16 v6, 0x3c

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1287
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x7e

    const/16 v6, 0x3d

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1288
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x5d

    const/16 v6, 0x3e

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1289
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x7c

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1290
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x20ac

    const/16 v6, 0x65

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1293
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xc7

    const/16 v6, 0x43

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1294
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x11e

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1295
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x130

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1296
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x15e

    const/16 v6, 0x53

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1297
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x63

    invoke-virtual {v4, v9, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1298
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x131

    const/16 v6, 0x67

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1299
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x11f

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1300
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x15f

    const/16 v6, 0x73

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1303
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x11e

    invoke-virtual {v4, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 1304
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x130

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1305
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x15e

    const/16 v6, 0x53

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1306
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x63

    invoke-virtual {v4, v9, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1307
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x11f

    const/16 v6, 0x67

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1308
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x131

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1309
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x15f

    const/16 v6, 0x73

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1312
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x9

    invoke-virtual {v4, v9, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1313
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xc1

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1314
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xcd

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1315
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xd3

    const/16 v6, 0x4f

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1316
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xda

    const/16 v6, 0x55

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1317
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xe1

    const/16 v6, 0x61

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1318
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xed

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1319
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xf3

    const/16 v6, 0x6f

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1320
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xfa

    const/16 v6, 0x75

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1323
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xea

    const/4 v6, 0x5

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1324
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x9

    invoke-virtual {v4, v9, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1325
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xd4

    const/16 v6, 0xb

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1326
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xf4

    const/16 v6, 0xc

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1327
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xc1

    const/16 v6, 0xe

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1328
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xe1

    const/16 v6, 0xf

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1329
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xca

    const/16 v6, 0x1f

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1330
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xc0

    invoke-virtual {v4, v5, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 1331
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xcd

    invoke-virtual {v4, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1332
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xd3

    const/16 v6, 0x4f

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1333
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xda

    const/16 v6, 0x55

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1334
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xc3

    const/16 v6, 0x5b

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1335
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xd5

    const/16 v6, 0x5c

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1336
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xc2

    const/16 v6, 0x61

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1337
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xed

    invoke-virtual {v4, v5, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 1338
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xf3

    const/16 v6, 0x6f

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1339
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xfa

    const/16 v6, 0x75

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1340
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xe3

    const/16 v6, 0x7b

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1341
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xf5

    const/16 v6, 0x7c

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1342
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0xe2

    const/16 v6, 0x7f

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1344
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a6

    const/16 v6, 0x12

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1345
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x393

    const/16 v6, 0x13

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1346
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a9

    const/16 v6, 0x15

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1347
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a0

    const/16 v6, 0x16

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1348
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a8

    const/16 v6, 0x17

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1349
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x3a3

    const/16 v6, 0x18

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1350
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    const/16 v5, 0x398

    const/16 v6, 0x19

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1353
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 1354
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1355
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1354
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1358
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 1359
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    .line 1360
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1359
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1364
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 1365
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_2

    .line 1366
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->gsmTurkishExtendedToChar:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1365
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1369
    :cond_2
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 1370
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_3

    .line 1371
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->gsmSpanishExtendedToChar:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1370
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1374
    :cond_3
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 1375
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_4

    .line 1376
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->gsmPortugueseExtendedToChar:Landroid/util/SparseIntArray;

    sget-object v5, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1375
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1380
    :cond_4
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    sput v4, Lcom/android/internal/telephony/GsmAlphabet;->sGsmSpaceChar:I

    .line 1381
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static charToGsm(C)I
    .locals 2
    .parameter "c"

    .prologue
    .line 64
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(CZ)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 67
    :goto_0
    return v1

    .line 65
    :catch_0
    move-exception v0

    .line 67
    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    sget v1, Lcom/android/internal/telephony/GsmAlphabet;->sGsmSpaceChar:I

    goto :goto_0
.end method

.method public static charToGsm(CZ)I
    .locals 3
    .parameter "c"
    .parameter "throwException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 85
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 87
    .local v0, ret:I
    if-ne v0, v2, :cond_2

    .line 88
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 90
    if-ne v0, v2, :cond_1

    .line 91
    if-eqz p1, :cond_0

    .line 92
    new-instance v1, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v1

    .line 94
    :cond_0
    sget v1, Lcom/android/internal/telephony/GsmAlphabet;->sGsmSpaceChar:I

    .line 101
    :goto_0
    return v1

    .line 97
    :cond_1
    const/16 v1, 0x1b

    goto :goto_0

    :cond_2
    move v1, v0

    .line 101
    goto :goto_0
.end method

.method public static charToGsm(CZI)I
    .locals 3
    .parameter "c"
    .parameter "throwException"
    .parameter "nationalLanguage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 110
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 112
    .local v0, ret:I
    if-ne v0, v2, :cond_2

    .line 113
    packed-switch p2, :pswitch_data_0

    .line 124
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 127
    :goto_0
    if-ne v0, v2, :cond_1

    .line 128
    if-eqz p1, :cond_0

    .line 129
    new-instance v1, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v1

    .line 115
    :pswitch_0
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 116
    goto :goto_0

    .line 118
    :pswitch_1
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 119
    goto :goto_0

    .line 121
    :pswitch_2
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 122
    goto :goto_0

    .line 131
    :cond_0
    sget v1, Lcom/android/internal/telephony/GsmAlphabet;->sGsmSpaceChar:I

    .line 138
    :goto_1
    return v1

    .line 134
    :cond_1
    const/16 v1, 0x1b

    goto :goto_1

    :cond_2
    move v1, v0

    .line 138
    goto :goto_1

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static charToGsmExtended(C)I
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, -0x1

    .line 204
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 206
    .local v0, ret:I
    if-ne v0, v2, :cond_0

    .line 207
    sget v1, Lcom/android/internal/telephony/GsmAlphabet;->sGsmSpaceChar:I

    .line 210
    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public static charToGsmNationalLanguageExtendCheck(Ljava/lang/CharSequence;)I
    .locals 9
    .parameter "s"

    .prologue
    const/4 v7, -0x1

    const-string v8, "GSM"

    .line 149
    const/4 v1, 0x0

    .line 150
    .local v1, charIndex:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 151
    .local v3, sz:I
    const/4 v0, 0x0

    .line 153
    .local v0, charCheck:I
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, language:Ljava/lang/String;
    const-string/jumbo v5, "tr"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 156
    :goto_0
    if-ge v1, v3, :cond_0

    .line 157
    sget-object v5, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 158
    .local v4, val:I
    if-eq v4, v7, :cond_1

    .line 159
    const/4 v0, 0x1

    .line 185
    .end local v4           #val:I
    :cond_0
    :goto_1
    const-string v5, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "charToGsmNationalLanguageExtendCheck language : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v5, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "charToGsmNationalLanguageExtendCheck charCheck : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return v0

    .line 162
    .restart local v4       #val:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 163
    goto :goto_0

    .line 165
    .end local v4           #val:I
    :cond_2
    const-string v5, "es"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 166
    :goto_2
    if-ge v1, v3, :cond_0

    .line 167
    sget-object v5, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 168
    .restart local v4       #val:I
    if-eq v4, v7, :cond_3

    .line 169
    const/4 v0, 0x2

    .line 170
    goto :goto_1

    .line 172
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 173
    goto :goto_2

    .line 175
    .end local v4           #val:I
    :cond_4
    const-string v5, "pt"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 176
    :goto_3
    if-ge v1, v3, :cond_0

    .line 177
    sget-object v5, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 178
    .restart local v4       #val:I
    if-eq v4, v7, :cond_5

    .line 179
    const/4 v0, 0x3

    .line 180
    goto :goto_1

    .line 182
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 183
    goto :goto_3
.end method

.method public static charToGsmPortugueseExtended(C)I
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, -0x1

    .line 246
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 247
    .local v0, ret:I
    if-ne v0, v2, :cond_0

    .line 248
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 250
    :cond_0
    if-ne v0, v2, :cond_1

    .line 251
    sget v1, Lcom/android/internal/telephony/GsmAlphabet;->sGsmSpaceChar:I

    .line 253
    :goto_0
    return v1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public static charToGsmSpanishExtended(C)I
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, -0x1

    .line 232
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 233
    .local v0, ret:I
    if-ne v0, v2, :cond_0

    .line 234
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 236
    :cond_0
    if-ne v0, v2, :cond_1

    .line 237
    sget v1, Lcom/android/internal/telephony/GsmAlphabet;->sGsmSpaceChar:I

    .line 239
    :goto_0
    return v1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public static charToGsmTurkishExtended(C)I
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, -0x1

    .line 218
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 219
    .local v0, ret:I
    if-ne v0, v2, :cond_0

    .line 220
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 222
    :cond_0
    if-ne v0, v2, :cond_1

    .line 223
    sget v1, Lcom/android/internal/telephony/GsmAlphabet;->sGsmSpaceChar:I

    .line 225
    :goto_0
    return v1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public static convertEachCharacter(C)C
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, -0x1

    .line 907
    move v0, p0

    .line 931
    .local v0, ret:C
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 932
    move v0, p0

    .line 940
    :goto_0
    return v0

    .line 933
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 934
    move v0, p0

    goto :goto_0

    .line 937
    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->convertNonGSMCharacter(C)C

    move-result v0

    goto :goto_0
.end method

.method private static convertNonGSMCharacter(C)C
    .locals 5
    .parameter "c"

    .prologue
    const-string/jumbo v4, "temp char :"

    .line 947
    move v0, p0

    .line 948
    .local v0, temp:C
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "temp char :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 949
    packed-switch v0, :pswitch_data_0

    .line 1100
    :pswitch_0
    const/16 v1, 0x7f

    if-le v0, v1, :cond_0

    .line 1102
    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    .line 1105
    const/16 v0, 0x20

    .line 1115
    :cond_0
    :goto_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "temp char :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1117
    return v0

    .line 961
    :pswitch_1
    const/16 v0, 0x61

    goto :goto_0

    .line 962
    :pswitch_2
    const/16 v0, 0x61

    goto :goto_0

    .line 963
    :pswitch_3
    const/16 v0, 0x61

    goto :goto_0

    .line 964
    :pswitch_4
    const/16 v0, 0x61

    goto :goto_0

    .line 965
    :pswitch_5
    const/16 v0, 0x61

    goto :goto_0

    .line 967
    :pswitch_6
    const/16 v0, 0x41

    goto :goto_0

    .line 968
    :pswitch_7
    const/16 v0, 0x41

    goto :goto_0

    .line 969
    :pswitch_8
    const/16 v0, 0x41

    goto :goto_0

    .line 970
    :pswitch_9
    const/16 v0, 0x41

    goto :goto_0

    .line 971
    :pswitch_a
    const/16 v0, 0x41

    goto :goto_0

    .line 972
    :pswitch_b
    const/16 v0, 0x41

    goto :goto_0

    .line 974
    :pswitch_c
    const/16 v0, 0x63

    goto :goto_0

    .line 975
    :pswitch_d
    const/16 v0, 0x63

    goto :goto_0

    .line 976
    :pswitch_e
    const/16 v0, 0x63

    goto :goto_0

    .line 978
    :pswitch_f
    const/16 v0, 0x43

    goto :goto_0

    .line 979
    :pswitch_10
    const/16 v0, 0x43

    goto :goto_0

    .line 981
    :pswitch_11
    const/16 v0, 0x64

    goto :goto_0

    .line 983
    :pswitch_12
    const/16 v0, 0x44

    goto :goto_0

    .line 985
    :pswitch_13
    const/16 v0, 0x65

    goto :goto_0

    .line 986
    :pswitch_14
    const/16 v0, 0x65

    goto :goto_0

    .line 987
    :pswitch_15
    const/16 v0, 0x65

    goto :goto_0

    .line 988
    :pswitch_16
    const/16 v0, 0x65

    goto :goto_0

    .line 989
    :pswitch_17
    const/16 v0, 0x65

    goto :goto_0

    .line 991
    :pswitch_18
    const/16 v0, 0x45

    goto :goto_0

    .line 992
    :pswitch_19
    const/16 v0, 0x45

    goto :goto_0

    .line 993
    :pswitch_1a
    const/16 v0, 0x45

    goto :goto_0

    .line 994
    :pswitch_1b
    const/16 v0, 0x45

    goto :goto_0

    .line 995
    :pswitch_1c
    const/16 v0, 0x45

    goto :goto_0

    .line 996
    :pswitch_1d
    const/16 v0, 0x45

    goto :goto_0

    .line 998
    :pswitch_1e
    const/16 v0, 0x67

    goto :goto_0

    .line 1000
    :pswitch_1f
    const/16 v0, 0x47

    goto :goto_0

    .line 1002
    :pswitch_20
    const/16 v0, 0x69

    goto :goto_0

    .line 1003
    :pswitch_21
    const/16 v0, 0x69

    goto :goto_0

    .line 1004
    :pswitch_22
    const/16 v0, 0x69

    goto :goto_0

    .line 1005
    :pswitch_23
    const/16 v0, 0x69

    goto/16 :goto_0

    .line 1006
    :pswitch_24
    const/16 v0, 0x69

    goto/16 :goto_0

    .line 1008
    :pswitch_25
    const/16 v0, 0x49

    goto/16 :goto_0

    .line 1009
    :pswitch_26
    const/16 v0, 0x49

    goto/16 :goto_0

    .line 1010
    :pswitch_27
    const/16 v0, 0x49

    goto/16 :goto_0

    .line 1011
    :pswitch_28
    const/16 v0, 0x49

    goto/16 :goto_0

    .line 1012
    :pswitch_29
    const/16 v0, 0x49

    goto/16 :goto_0

    .line 1013
    :pswitch_2a
    const/16 v0, 0x49

    goto/16 :goto_0

    .line 1015
    :pswitch_2b
    const/16 v0, 0x6c

    goto/16 :goto_0

    .line 1016
    :pswitch_2c
    const/16 v0, 0x6c

    goto/16 :goto_0

    .line 1017
    :pswitch_2d
    const/16 v0, 0x6c

    goto/16 :goto_0

    .line 1019
    :pswitch_2e
    const/16 v0, 0x4c

    goto/16 :goto_0

    .line 1020
    :pswitch_2f
    const/16 v0, 0x4c

    goto/16 :goto_0

    .line 1021
    :pswitch_30
    const/16 v0, 0x4c

    goto/16 :goto_0

    .line 1023
    :pswitch_31
    const/16 v0, 0x6e

    goto/16 :goto_0

    .line 1024
    :pswitch_32
    const/16 v0, 0x6e

    goto/16 :goto_0

    .line 1026
    :pswitch_33
    const/16 v0, 0x4e

    goto/16 :goto_0

    .line 1027
    :pswitch_34
    const/16 v0, 0x4e

    goto/16 :goto_0

    .line 1029
    :pswitch_35
    const/16 v0, 0x6f

    goto/16 :goto_0

    .line 1030
    :pswitch_36
    const/16 v0, 0x6f

    goto/16 :goto_0

    .line 1031
    :pswitch_37
    const/16 v0, 0x6f

    goto/16 :goto_0

    .line 1032
    :pswitch_38
    const/16 v0, 0x6f

    goto/16 :goto_0

    .line 1033
    :pswitch_39
    const/16 v0, 0x6f

    goto/16 :goto_0

    .line 1035
    :pswitch_3a
    const/16 v0, 0x4f

    goto/16 :goto_0

    .line 1036
    :pswitch_3b
    const/16 v0, 0x4f

    goto/16 :goto_0

    .line 1037
    :pswitch_3c
    const/16 v0, 0x4f

    goto/16 :goto_0

    .line 1038
    :pswitch_3d
    const/16 v0, 0x4f

    goto/16 :goto_0

    .line 1039
    :pswitch_3e
    const/16 v0, 0x4f

    goto/16 :goto_0

    .line 1040
    :pswitch_3f
    const/16 v0, 0x4f

    goto/16 :goto_0

    .line 1042
    :pswitch_40
    const/16 v0, 0x72

    goto/16 :goto_0

    .line 1043
    :pswitch_41
    const/16 v0, 0x72

    goto/16 :goto_0

    .line 1045
    :pswitch_42
    const/16 v0, 0x52

    goto/16 :goto_0

    .line 1046
    :pswitch_43
    const/16 v0, 0x52

    goto/16 :goto_0

    .line 1048
    :pswitch_44
    const/16 v0, 0x73

    goto/16 :goto_0

    .line 1049
    :pswitch_45
    const/16 v0, 0x73

    goto/16 :goto_0

    .line 1050
    :pswitch_46
    const/16 v0, 0x73

    goto/16 :goto_0

    .line 1052
    :pswitch_47
    const/16 v0, 0x53

    goto/16 :goto_0

    .line 1053
    :pswitch_48
    const/16 v0, 0x53

    goto/16 :goto_0

    .line 1054
    :pswitch_49
    const/16 v0, 0x53

    goto/16 :goto_0

    .line 1056
    :pswitch_4a
    const/16 v0, 0x74

    goto/16 :goto_0

    .line 1058
    :pswitch_4b
    const/16 v0, 0x54

    goto/16 :goto_0

    .line 1060
    :pswitch_4c
    const/16 v0, 0x75

    goto/16 :goto_0

    .line 1061
    :pswitch_4d
    const/16 v0, 0x75

    goto/16 :goto_0

    .line 1062
    :pswitch_4e
    const/16 v0, 0x75

    goto/16 :goto_0

    .line 1063
    :pswitch_4f
    const/16 v0, 0x75

    goto/16 :goto_0

    .line 1065
    :pswitch_50
    const/16 v0, 0x55

    goto/16 :goto_0

    .line 1066
    :pswitch_51
    const/16 v0, 0x55

    goto/16 :goto_0

    .line 1067
    :pswitch_52
    const/16 v0, 0x55

    goto/16 :goto_0

    .line 1068
    :pswitch_53
    const/16 v0, 0x55

    goto/16 :goto_0

    .line 1069
    :pswitch_54
    const/16 v0, 0x55

    goto/16 :goto_0

    .line 1071
    :pswitch_55
    const/16 v0, 0x79

    goto/16 :goto_0

    .line 1072
    :pswitch_56
    const/16 v0, 0x79

    goto/16 :goto_0

    .line 1074
    :pswitch_57
    const/16 v0, 0x59

    goto/16 :goto_0

    .line 1075
    :pswitch_58
    const/16 v0, 0x59

    goto/16 :goto_0

    .line 1077
    :pswitch_59
    const/16 v0, 0x7a

    goto/16 :goto_0

    .line 1078
    :pswitch_5a
    const/16 v0, 0x7a

    goto/16 :goto_0

    .line 1079
    :pswitch_5b
    const/16 v0, 0x7a

    goto/16 :goto_0

    .line 1081
    :pswitch_5c
    const/16 v0, 0x5a

    goto/16 :goto_0

    .line 1082
    :pswitch_5d
    const/16 v0, 0x5a

    goto/16 :goto_0

    .line 1083
    :pswitch_5e
    const/16 v0, 0x5a

    goto/16 :goto_0

    .line 1109
    :cond_1
    const v0, 0xfeff

    goto/16 :goto_0

    .line 949
    nop

    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_0
        :pswitch_0
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_0
        :pswitch_57
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4c
        :pswitch_4d
        :pswitch_0
        :pswitch_55
        :pswitch_0
        :pswitch_56
        :pswitch_a
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_4
        :pswitch_f
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_d
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_1d
        :pswitch_17
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1b
        :pswitch_15
        :pswitch_1c
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_1f
        :pswitch_1e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2a
        :pswitch_24
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_29
        :pswitch_23
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2e
        :pswitch_2b
        :pswitch_0
        :pswitch_0
        :pswitch_2f
        :pswitch_2c
        :pswitch_0
        :pswitch_0
        :pswitch_30
        :pswitch_2d
        :pswitch_33
        :pswitch_31
        :pswitch_0
        :pswitch_0
        :pswitch_34
        :pswitch_32
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3e
        :pswitch_38
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3f
        :pswitch_39
        :pswitch_42
        :pswitch_40
        :pswitch_0
        :pswitch_0
        :pswitch_43
        :pswitch_41
        :pswitch_47
        :pswitch_44
        :pswitch_0
        :pswitch_0
        :pswitch_49
        :pswitch_46
        :pswitch_48
        :pswitch_45
        :pswitch_0
        :pswitch_0
        :pswitch_4b
        :pswitch_4a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_54
        :pswitch_4f
        :pswitch_0
        :pswitch_0
        :pswitch_53
        :pswitch_4e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_58
        :pswitch_5c
        :pswitch_59
        :pswitch_5e
        :pswitch_5b
        :pswitch_5d
        :pswitch_5a
    .end packed-switch
.end method

.method public static countGsmSeptets(C)I
    .locals 3
    .parameter "c"

    .prologue
    const/4 v2, 0x0

    .line 801
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 804
    :goto_0
    return v1

    .line 802
    :catch_0
    move-exception v0

    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    move v1, v2

    .line 804
    goto :goto_0
.end method

.method public static countGsmSeptets(CZ)I
    .locals 3
    .parameter "c"
    .parameter "throwsException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 816
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_0

    move v0, v2

    .line 841
    :goto_0
    return v0

    .line 833
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 834
    const/4 v0, 0x2

    goto :goto_0

    .line 837
    :cond_1
    if-eqz p1, :cond_2

    .line 838
    new-instance v0, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(C)V

    throw v0

    :cond_2
    move v0, v2

    .line 841
    goto :goto_0
.end method

.method public static countGsmSeptets(Ljava/lang/CharSequence;)I
    .locals 3
    .parameter "s"

    .prologue
    const/4 v2, 0x0

    .line 852
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 855
    :goto_0
    return v1

    .line 853
    :catch_0
    move-exception v0

    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    move v1, v2

    .line 855
    goto :goto_0
.end method

.method public static countGsmSeptets(Ljava/lang/CharSequence;Z)I
    .locals 4
    .parameter "s"
    .parameter "throwsException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 867
    const/4 v0, 0x0

    .line 868
    .local v0, charIndex:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 869
    .local v2, sz:I
    const/4 v1, 0x0

    .line 871
    .local v1, count:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 872
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(CZ)I

    move-result v3

    add-int/2addr v1, v3

    .line 873
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 876
    :cond_0
    return v1
.end method

.method public static findGsmSeptetLimitIndex(Ljava/lang/String;II)I
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "limit"

    .prologue
    .line 894
    const/4 v0, 0x0

    .line 895
    .local v0, accumulator:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 897
    .local v2, size:I
    move v1, p1

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 898
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(C)I

    move-result v3

    add-int/2addr v0, v3

    .line 899
    if-le v0, p2, :cond_0

    move v3, v1

    .line 903
    :goto_1
    return v3

    .line 897
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 903
    goto :goto_1
.end method

.method public static gsm7BitPackedToString([BII)Ljava/lang/String;
    .locals 1
    .parameter "pdu"
    .parameter "offset"
    .parameter "lengthSeptets"

    .prologue
    .line 539
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static gsm7BitPackedToString([BIII)Ljava/lang/String;
    .locals 11
    .parameter "pdu"
    .parameter "offset"
    .parameter "lengthSeptets"
    .parameter "numPaddingBits"

    .prologue
    const/4 v10, 0x1

    .line 557
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 561
    .local v6, ret:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 563
    .local v5, prevCharWasEscape:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p2, :cond_3

    .line 564
    mul-int/lit8 v8, v4, 0x7

    add-int v0, v8, p3

    .line 566
    .local v0, bitOffset:I
    :try_start_0
    div-int/lit8 v1, v0, 0x8

    .line 567
    .local v1, byteOffset:I
    rem-int/lit8 v7, v0, 0x8

    .line 570
    .local v7, shift:I
    add-int v8, p1, v1

    aget-byte v8, p0, v8

    shr-int/2addr v8, v7

    and-int/lit8 v3, v8, 0x7f

    .line 573
    .local v3, gsmVal:I
    if-le v7, v10, :cond_0

    .line 575
    const/16 v8, 0x7f

    sub-int v9, v7, v10

    shr-int/2addr v8, v9

    and-int/2addr v3, v8

    .line 577
    add-int v8, p1, v1

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p0, v8

    const/16 v9, 0x8

    sub-int/2addr v9, v7

    shl-int/2addr v8, v9

    and-int/lit8 v8, v8, 0x7f

    or-int/2addr v3, v8

    .line 580
    :cond_0
    if-eqz v5, :cond_1

    .line 581
    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 582
    const/4 v5, 0x0

    .line 563
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 583
    :cond_1
    const/16 v8, 0x1b

    if-ne v3, v8, :cond_2

    .line 584
    const/4 v5, 0x1

    goto :goto_1

    .line 586
    :cond_2
    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 589
    .end local v1           #byteOffset:I
    .end local v3           #gsmVal:I
    .end local v7           #shift:I
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 590
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v8, "GSM"

    const-string v9, "Error GSM 7 bit packed: "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 591
    const/4 v8, 0x0

    .line 594
    .end local v0           #bitOffset:I
    .end local v2           #ex:Ljava/lang/RuntimeException;
    :goto_2
    return-object v8

    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2
.end method

.method public static gsm7BitPackedToString([BIIIB)Ljava/lang/String;
    .locals 11
    .parameter "pdu"
    .parameter "offset"
    .parameter "lengthSeptets"
    .parameter "numPaddingBits"
    .parameter "nationalLanguage"

    .prologue
    const/4 v10, 0x1

    .line 614
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 618
    .local v6, ret:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 620
    .local v5, prevCharWasEscape:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p2, :cond_3

    .line 621
    mul-int/lit8 v8, v4, 0x7

    add-int v0, v8, p3

    .line 623
    .local v0, bitOffset:I
    :try_start_0
    div-int/lit8 v1, v0, 0x8

    .line 624
    .local v1, byteOffset:I
    rem-int/lit8 v7, v0, 0x8

    .line 627
    .local v7, shift:I
    add-int v8, p1, v1

    aget-byte v8, p0, v8

    shr-int/2addr v8, v7

    and-int/lit8 v3, v8, 0x7f

    .line 630
    .local v3, gsmVal:I
    if-le v7, v10, :cond_0

    .line 632
    const/16 v8, 0x7f

    sub-int v9, v7, v10

    shr-int/2addr v8, v9

    and-int/2addr v3, v8

    .line 634
    add-int v8, p1, v1

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p0, v8

    const/16 v9, 0x8

    sub-int/2addr v9, v7

    shl-int/2addr v8, v9

    and-int/lit8 v8, v8, 0x7f

    or-int/2addr v3, v8

    .line 637
    :cond_0
    if-eqz v5, :cond_1

    .line 638
    packed-switch p4, :pswitch_data_0

    .line 649
    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 652
    :goto_1
    const/4 v5, 0x0

    .line 620
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 640
    :pswitch_0
    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsmTurkishLanguageShiftExtendedToChar(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 659
    .end local v1           #byteOffset:I
    .end local v3           #gsmVal:I
    .end local v7           #shift:I
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 660
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v8, "GSM"

    const-string v9, "Error GSM 7 bit packed: "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 661
    const/4 v8, 0x0

    .line 664
    .end local v0           #bitOffset:I
    .end local v2           #ex:Ljava/lang/RuntimeException;
    :goto_3
    return-object v8

    .line 643
    .restart local v0       #bitOffset:I
    .restart local v1       #byteOffset:I
    .restart local v3       #gsmVal:I
    .restart local v7       #shift:I
    :pswitch_1
    :try_start_1
    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsmSpanishLanguageShiftExtendedToChar(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 646
    :pswitch_2
    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsmPortugueseLanguageShiftExtendedToChar(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 653
    :cond_1
    const/16 v8, 0x1b

    if-ne v3, v8, :cond_2

    .line 654
    const/4 v5, 0x1

    goto :goto_2

    .line 656
    :cond_2
    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 664
    .end local v0           #bitOffset:I
    .end local v1           #byteOffset:I
    .end local v3           #gsmVal:I
    .end local v7           #shift:I
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 638
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static gsm8BitUnpackedToString([BII)Ljava/lang/String;
    .locals 6
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v5, 0x20

    .line 678
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 680
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 681
    .local v2, prevWasEscape:Z
    move v1, p1

    .local v1, i:I
    :goto_0
    add-int v4, p1, p2

    if-ge v1, v4, :cond_0

    .line 684
    aget-byte v4, p0, v1

    and-int/lit16 v0, v4, 0xff

    .line 686
    .local v0, c:I
    const/16 v4, 0xff

    if-ne v0, v4, :cond_1

    .line 730
    .end local v0           #c:I
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 688
    .restart local v0       #c:I
    :cond_1
    const/16 v4, 0x1b

    if-ne v0, v4, :cond_3

    .line 689
    if-eqz v2, :cond_2

    .line 693
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 694
    const/4 v2, 0x0

    .line 681
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 696
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 699
    :cond_3
    if-eqz v2, :cond_4

    .line 722
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 726
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 724
    :cond_4
    sget-object v4, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public static gsmExtendedToChar(I)C
    .locals 3
    .parameter "gsmChar"

    .prologue
    const/4 v2, -0x1

    .line 286
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 288
    .local v0, ret:I
    if-ne v0, v2, :cond_0

    .line 289
    const/16 v1, 0x20

    .line 292
    :goto_0
    return v1

    :cond_0
    int-to-char v1, v0

    goto :goto_0
.end method

.method public static gsmPortugueseLanguageShiftExtendedToChar(I)C
    .locals 3
    .parameter "gsmChar"

    .prologue
    const/4 v2, -0x1

    .line 336
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->gsmPortugueseExtendedToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 337
    .local v0, ret:I
    if-eq v0, v2, :cond_0

    .line 338
    int-to-char v1, v0

    .line 347
    :goto_0
    return v1

    .line 341
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 343
    if-ne v0, v2, :cond_1

    .line 344
    const/16 v1, 0x20

    goto :goto_0

    .line 347
    :cond_1
    int-to-char v1, v0

    goto :goto_0
.end method

.method public static gsmSpanishLanguageShiftExtendedToChar(I)C
    .locals 3
    .parameter "gsmChar"

    .prologue
    const/4 v2, -0x1

    .line 318
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->gsmSpanishExtendedToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 319
    .local v0, ret:I
    if-eq v0, v2, :cond_0

    .line 320
    int-to-char v1, v0

    .line 329
    :goto_0
    return v1

    .line 323
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 325
    if-ne v0, v2, :cond_1

    .line 326
    const/16 v1, 0x20

    goto :goto_0

    .line 329
    :cond_1
    int-to-char v1, v0

    goto :goto_0
.end method

.method public static gsmToChar(I)C
    .locals 2
    .parameter "gsmChar"

    .prologue
    .line 269
    sget-object v0, Lcom/android/internal/telephony/GsmAlphabet;->gsmToChar:Landroid/util/SparseIntArray;

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    int-to-char v0, v0

    return v0
.end method

.method public static gsmTurkishLanguageShiftExtendedToChar(I)C
    .locals 3
    .parameter "gsmChar"

    .prologue
    const/4 v2, -0x1

    .line 300
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->gsmTurkishExtendedToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 301
    .local v0, ret:I
    if-eq v0, v2, :cond_0

    .line 302
    int-to-char v1, v0

    .line 311
    :goto_0
    return v1

    .line 305
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/GsmAlphabet;->gsmExtendedToChar:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 307
    if-ne v0, v2, :cond_1

    .line 308
    const/16 v1, 0x20

    goto :goto_0

    .line 311
    :cond_1
    int-to-char v1, v0

    goto :goto_0
.end method

.method private static packSmsChar([BII)V
    .locals 4
    .parameter "packedChars"
    .parameter "bitOffset"
    .parameter "value"

    .prologue
    .line 516
    div-int/lit8 v0, p1, 0x8

    .line 517
    .local v0, byteOffset:I
    rem-int/lit8 v1, p1, 0x8

    .line 519
    .local v1, shift:I
    add-int/lit8 v0, v0, 0x1

    aget-byte v2, p0, v0

    shl-int v3, p2, v1

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 521
    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 522
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x8

    sub-int/2addr v2, v1

    shr-int v2, p2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    .line 524
    :cond_0
    return-void
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;)[B
    .locals 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 461
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;IZ)[B
    .locals 11
    .parameter "data"
    .parameter "startingSeptetOffset"
    .parameter "throwException"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x1b

    .line 483
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 484
    .local v3, dataLen:I
    invoke-static {p0, p2}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I

    move-result v9

    add-int v6, v9, p1

    .line 485
    .local v6, septetCount:I
    const/16 v9, 0xff

    if-le v6, v9, :cond_0

    .line 486
    new-instance v9, Lcom/android/internal/telephony/EncodeException;

    const-string v10, "Payload cannot exceed 255 septets"

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 488
    :cond_0
    mul-int/lit8 v9, v6, 0x7

    add-int/lit8 v9, v9, 0x7

    div-int/lit8 v1, v9, 0x8

    .line 489
    .local v1, byteCount:I
    add-int/lit8 v9, v1, 0x1

    new-array v5, v9, [B

    .line 490
    .local v5, ret:[B
    const/4 v4, 0x0

    .local v4, i:I
    move v7, p1

    .local v7, septets:I
    mul-int/lit8 v0, p1, 0x7

    .line 491
    .local v0, bitOffset:I
    :goto_0
    if-ge v4, v3, :cond_2

    if-ge v7, v6, :cond_2

    .line 493
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 494
    .local v2, c:C
    invoke-static {v2, p2}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(CZ)I

    move-result v8

    .line 495
    .local v8, v:I
    if-ne v8, v10, :cond_1

    .line 496
    invoke-static {v2}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended(C)I

    move-result v8

    .line 497
    invoke-static {v5, v0, v10}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    .line 498
    add-int/lit8 v0, v0, 0x7

    .line 499
    add-int/lit8 v7, v7, 0x1

    .line 501
    :cond_1
    invoke-static {v5, v0, v8}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    .line 502
    add-int/lit8 v7, v7, 0x1

    .line 492
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    .line 504
    .end local v2           #c:C
    .end local v8           #v:I
    :cond_2
    const/4 v9, 0x0

    int-to-byte v10, v6

    aput-byte v10, v5, v9

    .line 505
    return-object v5
.end method

.method public static stringToGsm7BitPacked(Ljava/lang/String;IZI)[B
    .locals 9
    .parameter "data"
    .parameter "startingSeptetOffset"
    .parameter "throwException"
    .parameter "nationalLanguage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 353
    .local v1, dataLen:I
    invoke-static {p0, p2}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I

    move-result v0

    add-int v4, v0, p1

    .line 354
    .local v4, septetCount:I
    const/16 v0, 0xff

    if-le v4, v0, :cond_0

    .line 355
    new-instance p0, Lcom/android/internal/telephony/EncodeException;

    .end local p0
    const-string p1, "Payload cannot exceed 255 septets"

    .end local p1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 357
    .restart local p0
    .restart local p1
    :cond_0
    mul-int/lit8 v0, v4, 0x7

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    .line 358
    .local v0, byteCount:I
    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [B

    .line 360
    .end local v0           #byteCount:I
    .local v3, ret:[B
    const-string v0, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stringToGsm7BitPacked startingSeptetOffset = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v0, 0x0

    .local v0, i:I
    move v2, p1

    .local v2, septets:I
    mul-int/lit8 p1, p1, 0x7

    .local p1, bitOffset:I
    move v5, v2

    .end local v2           #septets:I
    .local v5, septets:I
    move v2, v0

    .line 363
    .end local v0           #i:I
    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    if-ge v5, v4, :cond_1

    .line 365
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 366
    .local v0, c:C
    const-string v6, "GSM"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stringToGsm7BitPacked for ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-static {v0, p2, p3}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(CZI)I

    move-result v6

    .line 368
    .local v6, v:I
    const/16 v7, 0x1b

    if-ne v6, v7, :cond_2

    .line 369
    packed-switch p3, :pswitch_data_0

    .line 381
    invoke-static {v0}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended(C)I

    move-result v0

    .end local v6           #v:I
    .local v0, v:I
    move v6, v0

    .line 384
    .end local v0           #v:I
    .restart local v6       #v:I
    :goto_1
    const/16 v0, 0x1b

    invoke-static {v3, p1, v0}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    .line 385
    add-int/lit8 p1, p1, 0x7

    .line 386
    add-int/lit8 v0, v5, 0x1

    .end local v5           #septets:I
    .local v0, septets:I
    move v5, v6

    .line 388
    .end local v6           #v:I
    .local v5, v:I
    :goto_2
    invoke-static {v3, p1, v5}, Lcom/android/internal/telephony/GsmAlphabet;->packSmsChar([BII)V

    .line 389
    add-int/lit8 v5, v0, 0x1

    .line 364
    .end local v0           #septets:I
    .local v5, septets:I
    add-int/lit8 v0, v2, 0x1

    .end local v2           #i:I
    .local v0, i:I
    add-int/lit8 p1, p1, 0x7

    move v2, v0

    .end local v0           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 372
    .local v0, c:C
    .restart local v6       #v:I
    :pswitch_0
    invoke-static {v0}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmTurkishExtended(C)I

    move-result v0

    .end local v6           #v:I
    .local v0, v:I
    move v6, v0

    .line 373
    .end local v0           #v:I
    .restart local v6       #v:I
    goto :goto_1

    .line 375
    .local v0, c:C
    :pswitch_1
    invoke-static {v0}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmSpanishExtended(C)I

    move-result v0

    .end local v6           #v:I
    .local v0, v:I
    move v6, v0

    .line 376
    .end local v0           #v:I
    .restart local v6       #v:I
    goto :goto_1

    .line 378
    .local v0, c:C
    :pswitch_2
    invoke-static {v0}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmPortugueseExtended(C)I

    move-result v0

    .end local v6           #v:I
    .local v0, v:I
    move v6, v0

    .line 379
    .end local v0           #v:I
    .restart local v6       #v:I
    goto :goto_1

    .line 391
    .end local v6           #v:I
    :cond_1
    const/4 p0, 0x0

    int-to-byte p1, v4

    aput-byte p1, v3, p0

    .line 392
    .end local p0
    .end local p1           #bitOffset:I
    return-object v3

    .local v0, c:C
    .restart local v6       #v:I
    .restart local p0
    .restart local p1       #bitOffset:I
    :cond_2
    move v0, v5

    .end local v5           #septets:I
    .local v0, septets:I
    move v5, v6

    .end local v6           #v:I
    .local v5, v:I
    goto :goto_2

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B
    .locals 6
    .parameter "data"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/EncodeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 418
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_1

    .line 419
    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v3

    .line 442
    :goto_0
    return-object v3

    .line 422
    :cond_1
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v0, v3, 0x8

    .line 423
    .local v0, headerBits:I
    add-int/lit8 v3, v0, 0x6

    div-int/lit8 v1, v3, 0x7

    .line 435
    .local v1, headerSeptets:I
    invoke-static {p0, v1, v4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;IZ)[B

    move-result-object v2

    .line 440
    .local v2, ret:[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    .line 441
    const/4 v3, 0x0

    const/4 v4, 0x2

    array-length v5, p1

    invoke-static {p1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v2

    .line 442
    goto :goto_0
.end method

.method public static stringToGsm8BitPacked(Ljava/lang/String;)[B
    .locals 4
    .parameter "s"

    .prologue
    .line 741
    const/4 v1, 0x0

    .line 743
    .local v1, septets:I
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;)I

    move-result v1

    .line 746
    new-array v0, v1, [B

    .line 748
    .local v0, ret:[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {p0, v0, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V

    .line 750
    return-object v0
.end method

.method public static stringToGsm8BitUnpackedField(Ljava/lang/String;[BII)V
    .locals 8
    .parameter "s"
    .parameter "dest"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v7, 0x1b

    .line 763
    move v2, p2

    .line 766
    .local v2, outByteIndex:I
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, sz:I
    move v3, v2

    .line 767
    .end local v2           #outByteIndex:I
    .local v3, outByteIndex:I
    :goto_0
    if-ge v1, v4, :cond_0

    sub-int v6, v3, p2

    if-ge v6, p3, :cond_0

    .line 770
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 772
    .local v0, c:C
    invoke-static {v0}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsm(C)I

    move-result v5

    .line 774
    .local v5, v:I
    if-ne v5, v7, :cond_3

    .line 776
    add-int/lit8 v6, v3, 0x1

    sub-int/2addr v6, p2

    if-lt v6, p3, :cond_1

    .line 789
    .end local v0           #c:C
    .end local v5           #v:I
    :cond_0
    :goto_1
    sub-int v6, v3, p2

    if-ge v6, p3, :cond_2

    .line 790
    add-int/lit8 v2, v3, 0x1

    .end local v3           #outByteIndex:I
    .restart local v2       #outByteIndex:I
    const/4 v6, -0x1

    aput-byte v6, p1, v3

    move v3, v2

    .end local v2           #outByteIndex:I
    .restart local v3       #outByteIndex:I
    goto :goto_1

    .line 780
    .restart local v0       #c:C
    .restart local v5       #v:I
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .end local v3           #outByteIndex:I
    .restart local v2       #outByteIndex:I
    aput-byte v7, p1, v3

    .line 782
    invoke-static {v0}, Lcom/android/internal/telephony/GsmAlphabet;->charToGsmExtended(C)I

    move-result v5

    .line 785
    :goto_2
    add-int/lit8 v3, v2, 0x1

    .end local v2           #outByteIndex:I
    .restart local v3       #outByteIndex:I
    int-to-byte v6, v5

    aput-byte v6, p1, v2

    .line 768
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 792
    .end local v0           #c:C
    .end local v5           #v:I
    :cond_2
    return-void

    .restart local v0       #c:C
    .restart local v5       #v:I
    :cond_3
    move v2, v3

    .end local v3           #outByteIndex:I
    .restart local v2       #outByteIndex:I
    goto :goto_2
.end method
