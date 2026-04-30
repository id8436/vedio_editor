.class public final enum Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;
.super Ljava/lang/Enum;
.source "PriorityAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;

.field public static final enum FINISHED:Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;

.field public static final enum PENDING:Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;

.field public static final enum RUNNING:Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 261
    new-instance v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;

    const-string/jumbo v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;->PENDING:Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;

    .line 265
    new-instance v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;

    const-string/jumbo v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;->RUNNING:Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;

    .line 269
    new-instance v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;

    const-string/jumbo v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;->FINISHED:Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;

    .line 257
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;

    sget-object v1, Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;->PENDING:Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;->RUNNING:Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;->FINISHED:Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;->$VALUES:[Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 257
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;
    .locals 1

    .prologue
    .line 257
    const-class v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;

    return-object v0
.end method

.method public static values()[Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;
    .locals 1

    .prologue
    .line 257
    sget-object v0, Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;->$VALUES:[Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;

    invoke-virtual {v0}, [Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/premiereclip/util/PriorityAsyncTask$Status;

    return-object v0
.end method
