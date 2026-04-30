.class synthetic Lcom/dropbox/core/v2/paper/PaperDocUpdateError$1;
.super Ljava/lang/Object;
.source "PaperDocUpdateError.java"


# static fields
.field static final synthetic $SwitchMap$com$dropbox$core$v2$paper$PaperDocUpdateError:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 71
    invoke-static {}, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->values()[Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError$1;->$SwitchMap$com$dropbox$core$v2$paper$PaperDocUpdateError:[I

    :try_start_0
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError$1;->$SwitchMap$com$dropbox$core$v2$paper$PaperDocUpdateError:[I

    sget-object v1, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->INSUFFICIENT_PERMISSIONS:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError$1;->$SwitchMap$com$dropbox$core$v2$paper$PaperDocUpdateError:[I

    sget-object v1, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->OTHER:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError$1;->$SwitchMap$com$dropbox$core$v2$paper$PaperDocUpdateError:[I

    sget-object v1, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->DOC_NOT_FOUND:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    :try_start_3
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError$1;->$SwitchMap$com$dropbox$core$v2$paper$PaperDocUpdateError:[I

    sget-object v1, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->CONTENT_MALFORMED:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError$1;->$SwitchMap$com$dropbox$core$v2$paper$PaperDocUpdateError:[I

    sget-object v1, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->REVISION_MISMATCH:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError$1;->$SwitchMap$com$dropbox$core$v2$paper$PaperDocUpdateError:[I

    sget-object v1, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->DOC_LENGTH_EXCEEDED:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError$1;->$SwitchMap$com$dropbox$core$v2$paper$PaperDocUpdateError:[I

    sget-object v1, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->IMAGE_SIZE_EXCEEDED:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError$1;->$SwitchMap$com$dropbox$core$v2$paper$PaperDocUpdateError:[I

    sget-object v1, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->DOC_ARCHIVED:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocUpdateError$1;->$SwitchMap$com$dropbox$core$v2$paper$PaperDocUpdateError:[I

    sget-object v1, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->DOC_DELETED:Lcom/dropbox/core/v2/paper/PaperDocUpdateError;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/paper/PaperDocUpdateError;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    return-void

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_1

    :catch_8
    move-exception v0

    goto :goto_0
.end method
