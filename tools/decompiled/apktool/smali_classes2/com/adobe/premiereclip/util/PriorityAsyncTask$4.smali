.class synthetic Lcom/adobe/premiereclip/util/PriorityAsyncTask$4;
.super Ljava/lang/Object;
.source "PriorityAsyncTask.java"


# static fields
.field static final synthetic $SwitchMap$com$adobe$premiereclip$util$PriorityAsyncTask$Status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 582
    invoke-static {}, Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;->values()[Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$4;->$SwitchMap$com$adobe$premiereclip$util$PriorityAsyncTask$Status:[I

    :try_start_0
    sget-object v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$4;->$SwitchMap$com$adobe$premiereclip$util$PriorityAsyncTask$Status:[I

    sget-object v1, Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;->RUNNING:Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$4;->$SwitchMap$com$adobe$premiereclip$util$PriorityAsyncTask$Status:[I

    sget-object v1, Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;->FINISHED:Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;

    invoke-virtual {v1}, Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;->ordinal()I

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
