.class synthetic Lcom/dropbox/core/v2/sharing/SharingFileAccessError$1;
.super Ljava/lang/Object;
.source "SharingFileAccessError.java"


# static fields
.field static final synthetic $SwitchMap$com$dropbox$core$v2$sharing$SharingFileAccessError:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    invoke-static {}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->values()[Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$1;->$SwitchMap$com$dropbox$core$v2$sharing$SharingFileAccessError:[I

    :try_start_0
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$1;->$SwitchMap$com$dropbox$core$v2$sharing$SharingFileAccessError:[I

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->NO_PERMISSION:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$1;->$SwitchMap$com$dropbox$core$v2$sharing$SharingFileAccessError:[I

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->INVALID_FILE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$1;->$SwitchMap$com$dropbox$core$v2$sharing$SharingFileAccessError:[I

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->IS_FOLDER:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$1;->$SwitchMap$com$dropbox$core$v2$sharing$SharingFileAccessError:[I

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->INSIDE_PUBLIC_FOLDER:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharingFileAccessError$1;->$SwitchMap$com$dropbox$core$v2$sharing$SharingFileAccessError:[I

    sget-object v1, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->INSIDE_OSX_PACKAGE:Lcom/dropbox/core/v2/sharing/SharingFileAccessError;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/sharing/SharingFileAccessError;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
