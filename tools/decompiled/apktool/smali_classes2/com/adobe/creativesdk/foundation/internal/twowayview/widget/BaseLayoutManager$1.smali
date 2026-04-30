.class synthetic Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$1;
.super Ljava/lang/Object;
.source "BaseLayoutManager.java"


# static fields
.field static final synthetic $SwitchMap$com$adobe$creativesdk$foundation$internal$twowayview$widget$BaseLayoutManager$UpdateOp:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 290
    invoke-static {}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$UpdateOp;->values()[Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$UpdateOp;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$1;->$SwitchMap$com$adobe$creativesdk$foundation$internal$twowayview$widget$BaseLayoutManager$UpdateOp:[I

    :try_start_0
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$1;->$SwitchMap$com$adobe$creativesdk$foundation$internal$twowayview$widget$BaseLayoutManager$UpdateOp:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$UpdateOp;->ADD:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$UpdateOp;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$UpdateOp;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$1;->$SwitchMap$com$adobe$creativesdk$foundation$internal$twowayview$widget$BaseLayoutManager$UpdateOp:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$UpdateOp;->REMOVE:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$UpdateOp;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$UpdateOp;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$1;->$SwitchMap$com$adobe$creativesdk$foundation$internal$twowayview$widget$BaseLayoutManager$UpdateOp:[I

    sget-object v1, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$UpdateOp;->MOVE:Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$UpdateOp;

    invoke-virtual {v1}, Lcom/adobe/creativesdk/foundation/internal/twowayview/widget/BaseLayoutManager$UpdateOp;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
