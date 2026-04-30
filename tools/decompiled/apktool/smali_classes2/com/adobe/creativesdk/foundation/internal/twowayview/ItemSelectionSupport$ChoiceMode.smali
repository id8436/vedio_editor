.class public final enum Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;
.super Ljava/lang/Enum;
.source "ItemSelectionSupport.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

.field public static final enum MULTIPLE:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

.field public static final enum NONE:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

.field public static final enum SINGLE:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;->NONE:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    .line 24
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    const-string/jumbo v1, "SINGLE"

    invoke-direct {v0, v1, v3}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;->SINGLE:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    .line 25
    new-instance v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    const-string/jumbo v1, "MULTIPLE"

    invoke-direct {v0, v1, v4}, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;->MULTIPLE:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    .line 22
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;->NONE:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;->SINGLE:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;->MULTIPLE:Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;->$VALUES:[Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    return-object v0
.end method

.method public static values()[Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;->$VALUES:[Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    invoke-virtual {v0}, [Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/creativesdk/foundation/internal/twowayview/ItemSelectionSupport$ChoiceMode;

    return-object v0
.end method
