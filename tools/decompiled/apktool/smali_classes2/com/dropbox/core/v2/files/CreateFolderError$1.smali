.class synthetic Lcom/dropbox/core/v2/files/CreateFolderError$1;
.super Ljava/lang/Object;
.source "CreateFolderError.java"


# static fields
.field static final synthetic $SwitchMap$com$dropbox$core$v2$files$CreateFolderError$Tag:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 152
    invoke-static {}, Lcom/dropbox/core/v2/files/CreateFolderError$Tag;->values()[Lcom/dropbox/core/v2/files/CreateFolderError$Tag;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/dropbox/core/v2/files/CreateFolderError$1;->$SwitchMap$com$dropbox$core$v2$files$CreateFolderError$Tag:[I

    :try_start_0
    sget-object v0, Lcom/dropbox/core/v2/files/CreateFolderError$1;->$SwitchMap$com$dropbox$core$v2$files$CreateFolderError$Tag:[I

    sget-object v1, Lcom/dropbox/core/v2/files/CreateFolderError$Tag;->PATH:Lcom/dropbox/core/v2/files/CreateFolderError$Tag;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/files/CreateFolderError$Tag;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
