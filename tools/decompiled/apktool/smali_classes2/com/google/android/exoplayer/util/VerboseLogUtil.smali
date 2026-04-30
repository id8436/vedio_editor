.class public Lcom/google/android/exoplayer/util/VerboseLogUtil;
.super Ljava/lang/Object;
.source "VerboseLogUtil.java"


# static fields
.field private static volatile enableAllTags:Z

.field private static volatile enabledTags:[Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static areAllTagsEnabled()Z
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/google/android/exoplayer/util/VerboseLogUtil;->enableAllTags:Z

    return v0
.end method

.method public static isTagEnabled(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 57
    sget-boolean v0, Lcom/google/android/exoplayer/util/VerboseLogUtil;->enableAllTags:Z

    if-eqz v0, :cond_1

    move v1, v2

    .line 71
    :cond_0
    :goto_0
    return v1

    .line 62
    :cond_1
    sget-object v3, Lcom/google/android/exoplayer/util/VerboseLogUtil;->enabledTags:[Ljava/lang/String;

    .line 63
    if-eqz v3, :cond_0

    array-length v0, v3

    if-eqz v0, :cond_0

    move v0, v1

    .line 66
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 67
    aget-object v4, v3, v0

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 68
    goto :goto_0

    .line 66
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static setEnableAllTags(Z)V
    .locals 0

    .prologue
    .line 47
    sput-boolean p0, Lcom/google/android/exoplayer/util/VerboseLogUtil;->enableAllTags:Z

    .line 48
    return-void
.end method

.method public static varargs setEnabledTags([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 36
    sput-object p0, Lcom/google/android/exoplayer/util/VerboseLogUtil;->enabledTags:[Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/exoplayer/util/VerboseLogUtil;->enableAllTags:Z

    .line 38
    return-void
.end method
