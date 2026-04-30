package com.behance.sdk.dto.parser;

import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleAbstract;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleAudio;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleCollection;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleEmbedTransformed;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleImage;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleText;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleVideo;
import com.behance.sdk.dto.project.BehanceSDKAbstractProjectModuleDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectModuleAudioDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectModuleEmbedDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectModuleImageDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectModuleTextDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectModuleVideoDTO;
import com.behance.sdk.enums.BehanceSDKProjectModuleAlignment;
import com.behance.sdk.enums.BehanceSDKProjectModuleType;
import com.behance.sdk.util.BehanceSDKPublishConstants;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectModuleFactory {
    public static BehanceSDKAbstractProjectModuleDTO getProjectModuleInstance(JSONObject jSONObject) throws JSONException {
        BehanceSDKProjectModuleType behanceSDKProjectModuleTypeFromString = BehanceSDKProjectModuleType.fromString(jSONObject.getString("type"));
        if (behanceSDKProjectModuleTypeFromString == BehanceSDKProjectModuleType.IMAGE) {
            return getImageModuleInstance(jSONObject);
        }
        if (behanceSDKProjectModuleTypeFromString == BehanceSDKProjectModuleType.EMBED) {
            return getEmbedModuleInstance(jSONObject);
        }
        if (behanceSDKProjectModuleTypeFromString == BehanceSDKProjectModuleType.VIDEO) {
            return getVideoModuleInstance(jSONObject);
        }
        if (behanceSDKProjectModuleTypeFromString == BehanceSDKProjectModuleType.TEXT) {
            return getTextModuleInstance(jSONObject);
        }
        if (behanceSDKProjectModuleTypeFromString == BehanceSDKProjectModuleType.AUDIO) {
            return getAudioModuleInstance(jSONObject);
        }
        return null;
    }

    public static BehanceSDKEditProjectModuleAbstract getEditProjectModuleInstance(JSONObject jSONObject) throws JSONException {
        BehanceSDKProjectModuleType behanceSDKProjectModuleTypeFromString = BehanceSDKProjectModuleType.fromString(jSONObject.getString("type"));
        if (behanceSDKProjectModuleTypeFromString == BehanceSDKProjectModuleType.IMAGE) {
            return getEditImageModuleInstance(jSONObject);
        }
        if (behanceSDKProjectModuleTypeFromString == BehanceSDKProjectModuleType.EMBED) {
            return getEditEmbedModuleInstance(jSONObject);
        }
        if (behanceSDKProjectModuleTypeFromString == BehanceSDKProjectModuleType.VIDEO) {
            return getEditVideoModuleInstance(jSONObject);
        }
        if (behanceSDKProjectModuleTypeFromString == BehanceSDKProjectModuleType.TEXT) {
            return getEditTextModuleInstance(jSONObject);
        }
        if (behanceSDKProjectModuleTypeFromString == BehanceSDKProjectModuleType.AUDIO) {
            return getEditAudioModuleInstance(jSONObject);
        }
        if (behanceSDKProjectModuleTypeFromString == BehanceSDKProjectModuleType.MEDIA_COLLECTION) {
            return getEditCollectionModuleInstance(jSONObject);
        }
        return null;
    }

    private static BehanceSDKAbstractProjectModuleDTO getTextModuleInstance(JSONObject jSONObject) throws JSONException {
        BehanceSDKProjectModuleTextDTO behanceSDKProjectModuleTextDTO = new BehanceSDKProjectModuleTextDTO();
        behanceSDKProjectModuleTextDTO.setId(jSONObject.optString("id"));
        behanceSDKProjectModuleTextDTO.setFormattedText(jSONObject.optString("text"));
        behanceSDKProjectModuleTextDTO.setPlainText(jSONObject.optString("text_plain"));
        behanceSDKProjectModuleTextDTO.setAlignment(jSONObject.optString(BehanceSDKPublishConstants.KEY_ALIGNMENT));
        return behanceSDKProjectModuleTextDTO;
    }

    private static BehanceSDKEditProjectModuleText getEditTextModuleInstance(JSONObject jSONObject) throws JSONException {
        BehanceSDKEditProjectModuleText behanceSDKEditProjectModuleText = new BehanceSDKEditProjectModuleText();
        behanceSDKEditProjectModuleText.setId(jSONObject.optInt("id"));
        behanceSDKEditProjectModuleText.setHtml(jSONObject.optString("text"));
        behanceSDKEditProjectModuleText.setTextAlignment(BehanceSDKProjectModuleAlignment.fromString(jSONObject.optString(BehanceSDKPublishConstants.KEY_ALIGNMENT)));
        return behanceSDKEditProjectModuleText;
    }

    private static BehanceSDKAbstractProjectModuleDTO getAudioModuleInstance(JSONObject jSONObject) throws JSONException {
        BehanceSDKProjectModuleAudioDTO behanceSDKProjectModuleAudioDTO = new BehanceSDKProjectModuleAudioDTO();
        behanceSDKProjectModuleAudioDTO.setId(jSONObject.optString("id"));
        behanceSDKProjectModuleAudioDTO.setEmbedHTML(jSONObject.optString(BehanceSDKPublishConstants.KEY_EMBED));
        behanceSDKProjectModuleAudioDTO.setSrcURL(jSONObject.optString("src"));
        behanceSDKProjectModuleAudioDTO.setAlignment(jSONObject.optString(BehanceSDKPublishConstants.KEY_ALIGNMENT));
        return behanceSDKProjectModuleAudioDTO;
    }

    private static BehanceSDKEditProjectModuleAudio getEditAudioModuleInstance(JSONObject jSONObject) throws JSONException {
        BehanceSDKEditProjectModuleAudio behanceSDKEditProjectModuleAudio = new BehanceSDKEditProjectModuleAudio();
        behanceSDKEditProjectModuleAudio.setId(jSONObject.optInt("id"));
        behanceSDKEditProjectModuleAudio.setHtml(jSONObject.optString(BehanceSDKPublishConstants.KEY_EMBED));
        return behanceSDKEditProjectModuleAudio;
    }

    private static BehanceSDKAbstractProjectModuleDTO getVideoModuleInstance(JSONObject jSONObject) throws JSONException {
        BehanceSDKProjectModuleVideoDTO behanceSDKProjectModuleVideoDTO = new BehanceSDKProjectModuleVideoDTO();
        behanceSDKProjectModuleVideoDTO.setId(jSONObject.optString("id"));
        behanceSDKProjectModuleVideoDTO.setEmbedHTML(jSONObject.optString(BehanceSDKPublishConstants.KEY_EMBED));
        behanceSDKProjectModuleVideoDTO.setHeight(jSONObject.optInt("height"));
        behanceSDKProjectModuleVideoDTO.setWidth(jSONObject.optInt("width"));
        behanceSDKProjectModuleVideoDTO.setImageSrc(jSONObject.optString("image_src"));
        behanceSDKProjectModuleVideoDTO.setPlayerSkin(jSONObject.optString("player_skin"));
        behanceSDKProjectModuleVideoDTO.setPlayerUrl(jSONObject.optString("player"));
        behanceSDKProjectModuleVideoDTO.setVideoSrc(jSONObject.optString("src"));
        behanceSDKProjectModuleVideoDTO.setAlignment(jSONObject.optString(BehanceSDKPublishConstants.KEY_ALIGNMENT));
        return behanceSDKProjectModuleVideoDTO;
    }

    private static BehanceSDKEditProjectModuleVideo getEditVideoModuleInstance(JSONObject jSONObject) throws JSONException {
        BehanceSDKEditProjectModuleVideo behanceSDKEditProjectModuleVideo = new BehanceSDKEditProjectModuleVideo();
        behanceSDKEditProjectModuleVideo.setId(jSONObject.optInt("id"));
        behanceSDKEditProjectModuleVideo.setHtml(jSONObject.optString(BehanceSDKPublishConstants.KEY_EMBED));
        behanceSDKEditProjectModuleVideo.setHeight(jSONObject.optInt("height"));
        behanceSDKEditProjectModuleVideo.setWidth(jSONObject.optInt("width"));
        behanceSDKEditProjectModuleVideo.setPath(jSONObject.optString("src"));
        behanceSDKEditProjectModuleVideo.setCaption(jSONObject.optString(BehanceSDKPublishConstants.KEY_CAPTION));
        behanceSDKEditProjectModuleVideo.setCaptionAlignment(jSONObject.optString(BehanceSDKPublishConstants.KEY_CAPTION_ALIGNMENT));
        return behanceSDKEditProjectModuleVideo;
    }

    private static BehanceSDKAbstractProjectModuleDTO getEmbedModuleInstance(JSONObject jSONObject) throws JSONException {
        BehanceSDKProjectModuleEmbedDTO behanceSDKProjectModuleEmbedDTO = new BehanceSDKProjectModuleEmbedDTO();
        behanceSDKProjectModuleEmbedDTO.setId(jSONObject.optString("id"));
        behanceSDKProjectModuleEmbedDTO.setEmbedHTML(jSONObject.optString(BehanceSDKPublishConstants.KEY_EMBED));
        behanceSDKProjectModuleEmbedDTO.setAlignment(jSONObject.optString(BehanceSDKPublishConstants.KEY_ALIGNMENT));
        behanceSDKProjectModuleEmbedDTO.setCaptionFormattedText(jSONObject.optString(BehanceSDKPublishConstants.KEY_CAPTION));
        behanceSDKProjectModuleEmbedDTO.setCaptionPlainText(jSONObject.optString("caption_plain"));
        behanceSDKProjectModuleEmbedDTO.setCaptionAlignment(jSONObject.optString(BehanceSDKPublishConstants.KEY_CAPTION_ALIGNMENT));
        return behanceSDKProjectModuleEmbedDTO;
    }

    private static BehanceSDKEditProjectModuleEmbedTransformed getEditEmbedModuleInstance(JSONObject jSONObject) throws JSONException {
        BehanceSDKEditProjectModuleEmbedTransformed behanceSDKEditProjectModuleEmbedTransformed = new BehanceSDKEditProjectModuleEmbedTransformed();
        behanceSDKEditProjectModuleEmbedTransformed.setId(jSONObject.optInt("id"));
        behanceSDKEditProjectModuleEmbedTransformed.setHtml(jSONObject.optString(BehanceSDKPublishConstants.KEY_EMBED));
        behanceSDKEditProjectModuleEmbedTransformed.setFullBleed(jSONObject.optInt(BehanceSDKPublishConstants.KEY_FULL_BLEED) == 1);
        behanceSDKEditProjectModuleEmbedTransformed.setEmbedAlignment(BehanceSDKProjectModuleAlignment.fromString(jSONObject.optString(BehanceSDKPublishConstants.KEY_ALIGNMENT)));
        behanceSDKEditProjectModuleEmbedTransformed.setWidthUnit(jSONObject.optString(BehanceSDKPublishConstants.KEY_WIDTH_UNIT));
        behanceSDKEditProjectModuleEmbedTransformed.setOriginalWidth(jSONObject.optInt(BehanceSDKPublishConstants.KEY_ORIGINAL_WIDTH));
        behanceSDKEditProjectModuleEmbedTransformed.setOriginalHeight(jSONObject.optInt(BehanceSDKPublishConstants.KEY_ORIGINAL_HEIGHT));
        behanceSDKEditProjectModuleEmbedTransformed.setCaption(jSONObject.optString(BehanceSDKPublishConstants.KEY_CAPTION));
        behanceSDKEditProjectModuleEmbedTransformed.setCaptionAlignment(jSONObject.optString(BehanceSDKPublishConstants.KEY_CAPTION_ALIGNMENT));
        return behanceSDKEditProjectModuleEmbedTransformed;
    }

    private static BehanceSDKAbstractProjectModuleDTO getImageModuleInstance(JSONObject jSONObject) throws JSONException {
        BehanceSDKProjectModuleImageDTO behanceSDKProjectModuleImageDTO = new BehanceSDKProjectModuleImageDTO();
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("dimensions");
        if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.optJSONObject("disp") != null) {
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("disp");
            behanceSDKProjectModuleImageDTO.setHeight(jSONObjectOptJSONObject2.optInt("height"));
            behanceSDKProjectModuleImageDTO.setWidth(jSONObjectOptJSONObject2.optInt("width"));
        } else {
            behanceSDKProjectModuleImageDTO.setHeight(jSONObject.optInt("height"));
            behanceSDKProjectModuleImageDTO.setWidth(jSONObject.optInt("width"));
        }
        behanceSDKProjectModuleImageDTO.setId(jSONObject.optString("id"));
        behanceSDKProjectModuleImageDTO.setSrcUrl(jSONObject.optString("src"));
        behanceSDKProjectModuleImageDTO.setFullBleed(jSONObject.optInt(BehanceSDKPublishConstants.KEY_FULL_BLEED) == 1);
        Object objOpt = jSONObject.opt("sizes");
        if (objOpt instanceof JSONObject) {
            behanceSDKProjectModuleImageDTO.setHDSrcUrl(((JSONObject) objOpt).optString("max_1240"));
        }
        behanceSDKProjectModuleImageDTO.setAlignment(jSONObject.optString(BehanceSDKPublishConstants.KEY_ALIGNMENT));
        behanceSDKProjectModuleImageDTO.setCaptionFormattedText(jSONObject.optString(BehanceSDKPublishConstants.KEY_CAPTION));
        behanceSDKProjectModuleImageDTO.setCaptionPlainText(jSONObject.optString("caption_plain"));
        behanceSDKProjectModuleImageDTO.setCaptionAlignment(jSONObject.optString(BehanceSDKPublishConstants.KEY_CAPTION_ALIGNMENT));
        return behanceSDKProjectModuleImageDTO;
    }

    private static BehanceSDKEditProjectModuleImage getEditImageModuleInstance(JSONObject jSONObject) throws JSONException {
        BehanceSDKEditProjectModuleImage behanceSDKEditProjectModuleImage = new BehanceSDKEditProjectModuleImage();
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("dimensions");
        if (jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.optJSONObject("disp") != null) {
            JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("disp");
            behanceSDKEditProjectModuleImage.setHeight(jSONObjectOptJSONObject2.optInt("height"));
            behanceSDKEditProjectModuleImage.setWidth(jSONObjectOptJSONObject2.optInt("width"));
        } else {
            behanceSDKEditProjectModuleImage.setHeight(jSONObject.optInt("height"));
            behanceSDKEditProjectModuleImage.setWidth(jSONObject.optInt("width"));
        }
        behanceSDKEditProjectModuleImage.setId(jSONObject.optInt("id"));
        behanceSDKEditProjectModuleImage.setDisp(jSONObject.optJSONObject("sizes").optString("disp"));
        behanceSDKEditProjectModuleImage.setSrc(jSONObject.optJSONObject("sizes").optString("original"));
        behanceSDKEditProjectModuleImage.setFullBleed(jSONObject.optInt(BehanceSDKPublishConstants.KEY_FULL_BLEED) == 1);
        behanceSDKEditProjectModuleImage.setCaption(jSONObject.optString(BehanceSDKPublishConstants.KEY_CAPTION));
        behanceSDKEditProjectModuleImage.setCaptionAlignment(jSONObject.optString(BehanceSDKPublishConstants.KEY_CAPTION_ALIGNMENT));
        return behanceSDKEditProjectModuleImage;
    }

    private static BehanceSDKEditProjectModuleCollection getEditCollectionModuleInstance(JSONObject jSONObject) {
        BehanceSDKEditProjectModuleCollection behanceSDKEditProjectModuleCollection = new BehanceSDKEditProjectModuleCollection();
        behanceSDKEditProjectModuleCollection.setId(jSONObject.optInt("id"));
        behanceSDKEditProjectModuleCollection.setModuleTypeString(jSONObject.optString("type"));
        behanceSDKEditProjectModuleCollection.setCollectionType(jSONObject.optString(BehanceSDKPublishConstants.KEY_COLLECTION_TYPE));
        behanceSDKEditProjectModuleCollection.setSortType(jSONObject.optString(BehanceSDKPublishConstants.KEY_SORT_TYPE));
        behanceSDKEditProjectModuleCollection.setComponents(jSONObject.optJSONArray("components"));
        behanceSDKEditProjectModuleCollection.setFullBleed(jSONObject.optInt(BehanceSDKPublishConstants.KEY_FULL_BLEED) == 1);
        behanceSDKEditProjectModuleCollection.setCaption(jSONObject.optString(BehanceSDKPublishConstants.KEY_CAPTION));
        behanceSDKEditProjectModuleCollection.setCaptionAlignment(jSONObject.optString(BehanceSDKPublishConstants.KEY_CAPTION_ALIGNMENT));
        return behanceSDKEditProjectModuleCollection;
    }
}
