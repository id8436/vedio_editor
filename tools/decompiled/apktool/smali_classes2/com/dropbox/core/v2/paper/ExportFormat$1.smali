.class synthetic Lcom/dropbox/core/v2/paper/ExportFormat$1;
.super Ljava/lang/Object;
.source "ExportFormat.java"


# static fields
.field static final synthetic $SwitchMap$com$dropbox$core$v2$paper$ExportFormat:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/dropbox/core/v2/paper/ExportFormat;->values()[Lcom/dropbox/core/v2/paper/ExportFormat;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/dropbox/core/v2/paper/ExportFormat$1;->$SwitchMap$com$dropbox$core$v2$paper$ExportFormat:[I

    :try_start_0
    sget-object v0, Lcom/dropbox/core/v2/paper/ExportFormat$1;->$SwitchMap$com$dropbox$core$v2$paper$ExportFormat:[I

    sget-object v1, Lcom/dropbox/core/v2/paper/ExportFormat;->HTML:Lcom/dropbox/core/v2/paper/ExportFormat;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/paper/ExportFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/dropbox/core/v2/paper/ExportFormat$1;->$SwitchMap$com$dropbox$core$v2$paper$ExportFormat:[I

    sget-object v1, Lcom/dropbox/core/v2/paper/ExportFormat;->MARKDOWN:Lcom/dropbox/core/v2/paper/ExportFormat;

    invoke-virtual {v1}, Lcom/dropbox/core/v2/paper/ExportFormat;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
