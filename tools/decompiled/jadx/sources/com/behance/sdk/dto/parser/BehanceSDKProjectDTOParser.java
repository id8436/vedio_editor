package com.behance.sdk.dto.parser;

import android.graphics.Color;
import android.support.v4.provider.FontsContractCompat;
import com.adobe.creativesdk.foundation.adobeinternal.storage.psd.AdobePSDCompositeConstants;
import com.behance.sdk.dto.BehanceSDKCreativeFieldDTO;
import com.behance.sdk.dto.editor.BehanceSDKEditProjectModuleAbstract;
import com.behance.sdk.dto.editor.BehanceSDKEditorProjectDTO;
import com.behance.sdk.dto.project.BehanceSDKAbstractProjectModuleDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectCopyrightDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectCoversDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectFeaturedDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectStatsDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectStylesDTO;
import com.behance.sdk.dto.project.BehanceSDKProjectToolDTO;
import com.behance.sdk.enums.BehanceSDKCopyrightOption;
import com.behance.sdk.exception.BehanceSDKProjectParseException;
import com.behance.sdk.util.BehanceSDKPublishConstants;
import com.google.gdata.client.spreadsheet.ListQuery;
import com.google.gdata.data.projecthosting.ProjectHostingNamespace;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class BehanceSDKProjectDTOParser {
    private static final float ProjectTextModuleCaptionDefaultFontSize = 13.0f;
    private static final float ProjectTextModuleCaptionDefaultFontSizeV5 = 11.0f;
    private static final float ProjectTextModuleDefaultFontSize = 12.0f;
    private static final float ProjectTextModuleDefaultFontSizeV5 = 14.0f;
    private static final String ProjectTextModuleDefaultLineHeight = "1.4";

    public List<BehanceSDKProjectDTO> parseJustProjects(String str) throws BehanceSDKProjectParseException {
        return parseJustProjects(str, true);
    }

    public List<BehanceSDKProjectDTO> parseJustProjects(String str, boolean z) throws BehanceSDKProjectParseException {
        try {
            return parseJustProjects(new JSONObject(str).getJSONArray(ProjectHostingNamespace.PROJECTS_ALIAS), z);
        } catch (JSONException e2) {
            throw new BehanceSDKProjectParseException(e2.getMessage(), e2);
        }
    }

    public BehanceSDKProjectDTO parseProjectWithDetails(JSONObject jSONObject) throws BehanceSDKProjectParseException {
        try {
            return populateProjectDetails(jSONObject, true);
        } catch (JSONException e2) {
            throw new BehanceSDKProjectParseException(e2.getMessage(), e2);
        }
    }

    private List<BehanceSDKProjectDTO> parseJustProjects(JSONArray jSONArray, boolean z) throws BehanceSDKProjectParseException {
        BehanceSDKProjectDTO behanceSDKProjectDTOPopulateProjectDetails;
        try {
            ArrayList arrayList = new ArrayList(jSONArray.length());
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                if (jSONObject != null && ((isProjectPublic(jSONObject) || z) && (behanceSDKProjectDTOPopulateProjectDetails = populateProjectDetails(jSONObject, false)) != null && !behanceSDKProjectDTOPopulateProjectDetails.getName().equals("[Invalid Project]"))) {
                    arrayList.add(behanceSDKProjectDTOPopulateProjectDetails);
                }
            }
            return arrayList;
        } catch (JSONException e2) {
            throw new BehanceSDKProjectParseException(e2.getMessage(), e2);
        }
    }

    private boolean isProjectPublic(JSONObject jSONObject) {
        return "public".equalsIgnoreCase(jSONObject.optString("privacy"));
    }

    private BehanceSDKProjectDTO populateProjectDetails(JSONObject jSONObject, boolean z) throws JSONException {
        if (jSONObject == null) {
            return null;
        }
        BehanceSDKProjectDTO behanceSDKProjectDTO = new BehanceSDKProjectDTO();
        behanceSDKProjectDTO.setId(jSONObject.optString("id"));
        behanceSDKProjectDTO.setName(jSONObject.optString("name"));
        behanceSDKProjectDTO.setPublishedDate(jSONObject.optLong("published_on"));
        behanceSDKProjectDTO.setCreatedDate(jSONObject.optLong("created_on"));
        behanceSDKProjectDTO.setModifiedDate(jSONObject.optLong("modified_on"));
        behanceSDKProjectDTO.setUrl(jSONObject.optString("url"));
        behanceSDKProjectDTO.setPrivacy(jSONObject.optString("privacy"));
        behanceSDKProjectDTO.setCovers(populateProjectCovers(jSONObject.optJSONObject("covers")));
        populateProjectStats(jSONObject.optJSONObject("stats"), behanceSDKProjectDTO);
        populateProjectOwners(jSONObject.optJSONArray("owners"), behanceSDKProjectDTO);
        populateProjectFields(behanceSDKProjectDTO, jSONObject);
        if (z) {
            behanceSDKProjectDTO.setMatureAccess(jSONObject.optString("mature_access"));
            behanceSDKProjectDTO.setMatureContent(jSONObject.optInt(BehanceSDKPublishConstants.KEY_MATURE_CONTENT) != 0);
            behanceSDKProjectDTO.setDescription(jSONObject.optString("description"));
            behanceSDKProjectDTO.setCustomCSS(jSONObject.optString("custom_css"));
            behanceSDKProjectDTO.setShortUrl(jSONObject.optString("short_url"));
            behanceSDKProjectDTO.setHTML(jSONObject.optString(BehanceSDKPublishConstants.KEY_HTML));
            behanceSDKProjectDTO.setCanvasWidth(jSONObject.optInt("canvas_width"));
            behanceSDKProjectDTO.setAllowComments(jSONObject.optInt(BehanceSDKPublishConstants.KEY_COMMENTS_ALLOWED) != 0);
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("tags");
            if (jSONArrayOptJSONArray != null) {
                for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                    behanceSDKProjectDTO.addTag(jSONArrayOptJSONArray.getString(i));
                }
            }
            populateProjectModules(jSONObject.optJSONArray(BehanceSDKPublishConstants.KEY_MODULES), behanceSDKProjectDTO);
            populateProjectTools(jSONObject.optJSONArray(BehanceSDKPublishConstants.KEY_TOOLS), behanceSDKProjectDTO);
            populateProjectFeaturedDetails(jSONObject.optJSONArray("features"), behanceSDKProjectDTO);
            populateProjectCopyright(jSONObject.optJSONObject("copyright"), behanceSDKProjectDTO);
            behanceSDKProjectDTO.setProjectStyles(buildProjectStylesDTO(jSONObject.optJSONObject("styles"), jSONObject.optInt("editor_version")));
        }
        return behanceSDKProjectDTO;
    }

    public static BehanceSDKEditorProjectDTO parseEditorProject(JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            return null;
        }
        BehanceSDKEditorProjectDTO behanceSDKEditorProjectDTO = new BehanceSDKEditorProjectDTO();
        behanceSDKEditorProjectDTO.setId(jSONObject.optString("id"));
        behanceSDKEditorProjectDTO.setName(jSONObject.optString("name"));
        behanceSDKEditorProjectDTO.setCovers(populateProjectCovers(jSONObject.optJSONObject("covers")));
        behanceSDKEditorProjectDTO.setMatureContent(jSONObject.optInt(BehanceSDKPublishConstants.KEY_MATURE_CONTENT) != 0);
        behanceSDKEditorProjectDTO.setDescription(jSONObject.optString("description"));
        behanceSDKEditorProjectDTO.setAllowComments(jSONObject.optInt(BehanceSDKPublishConstants.KEY_COMMENTS_ALLOWED) != 0);
        behanceSDKEditorProjectDTO.setTools(BehanceSDKTagParser.parse(jSONObject.optJSONArray(BehanceSDKPublishConstants.KEY_TOOLS)));
        behanceSDKEditorProjectDTO.setCopyright(BehanceSDKCopyrightOption.getCopyrightOptionFromValue(jSONObject.optJSONObject("copyright").optString(BehanceSDKPublishConstants.KEY_LICENSE)));
        behanceSDKEditorProjectDTO.setBackgroundColor(Color.parseColor("#" + jSONObject.optJSONObject("styles").optJSONObject("background").optString("color")));
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("fields");
        if (jSONArrayOptJSONArray != null) {
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                BehanceSDKCreativeFieldDTO behanceSDKCreativeFieldDTO = new BehanceSDKCreativeFieldDTO();
                behanceSDKCreativeFieldDTO.setName(jSONArrayOptJSONArray.optString(i));
                behanceSDKEditorProjectDTO.addField(behanceSDKCreativeFieldDTO);
            }
        }
        JSONArray jSONArrayOptJSONArray2 = jSONObject.optJSONArray("tags");
        if (jSONArrayOptJSONArray2 != null) {
            for (int i2 = 0; i2 < jSONArrayOptJSONArray2.length(); i2++) {
                behanceSDKEditorProjectDTO.addTag(jSONArrayOptJSONArray2.getString(i2));
            }
        }
        JSONArray jSONArrayOptJSONArray3 = jSONObject.optJSONArray("owners");
        if (jSONArrayOptJSONArray3 != null) {
            BehanceUserDTOParser behanceUserDTOParser = new BehanceUserDTOParser();
            for (int i3 = 0; i3 < jSONArrayOptJSONArray3.length(); i3++) {
                behanceSDKEditorProjectDTO.addOwner(behanceUserDTOParser.parse(jSONArrayOptJSONArray3.optJSONObject(i3)));
            }
        }
        JSONArray jSONArrayOptJSONArray4 = jSONObject.optJSONArray(BehanceSDKPublishConstants.KEY_MODULES);
        if (jSONArrayOptJSONArray4 != null) {
            for (int i4 = 0; i4 < jSONArrayOptJSONArray4.length(); i4++) {
                BehanceSDKEditProjectModuleAbstract editProjectModuleInstance = BehanceSDKProjectModuleFactory.getEditProjectModuleInstance(jSONArrayOptJSONArray4.optJSONObject(i4));
                if (editProjectModuleInstance != null) {
                    editProjectModuleInstance.setNewModule(false);
                    behanceSDKEditorProjectDTO.addModule(editProjectModuleInstance);
                }
            }
        }
        return behanceSDKEditorProjectDTO;
    }

    private void populateProjectFields(BehanceSDKProjectDTO behanceSDKProjectDTO, JSONObject jSONObject) {
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("fields");
        if (jSONArrayOptJSONArray != null) {
            ArrayList arrayList = new ArrayList(jSONArrayOptJSONArray.length());
            for (int i = 0; i < jSONArrayOptJSONArray.length(); i++) {
                arrayList.add(jSONArrayOptJSONArray.optString(i));
            }
            behanceSDKProjectDTO.setFields(arrayList);
        }
    }

    private void populateProjectModules(JSONArray jSONArray, BehanceSDKProjectDTO behanceSDKProjectDTO) throws JSONException {
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                BehanceSDKAbstractProjectModuleDTO projectModuleInstance = BehanceSDKProjectModuleFactory.getProjectModuleInstance(jSONArray.optJSONObject(i));
                if (projectModuleInstance != null) {
                    behanceSDKProjectDTO.addModule(projectModuleInstance);
                }
            }
        }
    }

    private void populateProjectTools(JSONArray jSONArray, BehanceSDKProjectDTO behanceSDKProjectDTO) throws JSONException {
        if (jSONArray != null) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                BehanceSDKProjectToolDTO behanceSDKProjectToolDTO = new BehanceSDKProjectToolDTO();
                behanceSDKProjectToolDTO.setId(jSONObject.optInt("id"));
                behanceSDKProjectToolDTO.setTitle(jSONObject.optString("title"));
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("synonym");
                if (jSONObjectOptJSONObject != null) {
                    behanceSDKProjectToolDTO.setUrl(jSONObjectOptJSONObject.optString("url"));
                    behanceSDKProjectToolDTO.setIconUrl(jSONObjectOptJSONObject.optString("icon_url"));
                }
                arrayList.add(behanceSDKProjectToolDTO);
            }
            behanceSDKProjectDTO.setTools(arrayList);
        }
    }

    private void populateProjectStats(JSONObject jSONObject, BehanceSDKProjectDTO behanceSDKProjectDTO) throws JSONException {
        if (jSONObject != null) {
            BehanceSDKProjectStatsDTO behanceSDKProjectStatsDTO = new BehanceSDKProjectStatsDTO();
            behanceSDKProjectStatsDTO.setAppreciationsCount(jSONObject.optInt("appreciations"));
            behanceSDKProjectStatsDTO.setViewsCount(jSONObject.optInt("views"));
            behanceSDKProjectStatsDTO.setCommentsCount(jSONObject.optInt("comments"));
            behanceSDKProjectDTO.setStats(behanceSDKProjectStatsDTO);
        }
    }

    private void populateProjectOwners(JSONArray jSONArray, BehanceSDKProjectDTO behanceSDKProjectDTO) throws JSONException {
        if (jSONArray != null) {
            BehanceUserDTOParser behanceUserDTOParser = new BehanceUserDTOParser();
            for (int i = 0; i < jSONArray.length(); i++) {
                behanceSDKProjectDTO.addOwner(behanceUserDTOParser.parse(jSONArray.optJSONObject(i)));
            }
        }
    }

    private static BehanceSDKProjectCoversDTO populateProjectCovers(JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            return null;
        }
        BehanceSDKProjectCoversDTO behanceSDKProjectCoversDTO = new BehanceSDKProjectCoversDTO();
        behanceSDKProjectCoversDTO.addCoverImages(115, jSONObject.optString(String.valueOf(115)));
        behanceSDKProjectCoversDTO.addCoverImages(202, jSONObject.optString(String.valueOf(202)));
        behanceSDKProjectCoversDTO.addCoverImages(230, jSONObject.optString(String.valueOf(230)));
        behanceSDKProjectCoversDTO.addCoverImages(404, jSONObject.optString(String.valueOf(404)));
        behanceSDKProjectCoversDTO.setOriginalCoverImage(jSONObject.optString("original"));
        return behanceSDKProjectCoversDTO;
    }

    private void populateProjectFeaturedDetails(JSONArray jSONArray, BehanceSDKProjectDTO behanceSDKProjectDTO) throws JSONException {
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                BehanceSDKProjectFeaturedDTO behanceSDKProjectFeaturedDTO = new BehanceSDKProjectFeaturedDTO();
                behanceSDKProjectFeaturedDTO.setFeaturedDate(jSONObject.optLong("featured_on"));
                behanceSDKProjectFeaturedDTO.setProjectUrl(jSONObject.optString("url"));
                JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("site");
                if (jSONObjectOptJSONObject != null) {
                    behanceSDKProjectFeaturedDTO.setSiteDomain(jSONObjectOptJSONObject.optString("domain"));
                    behanceSDKProjectFeaturedDTO.setSiteIcon(jSONObjectOptJSONObject.optString("icon"));
                    behanceSDKProjectFeaturedDTO.setSiteId(jSONObjectOptJSONObject.optString("id"));
                    behanceSDKProjectFeaturedDTO.setSiteKey(jSONObjectOptJSONObject.optString("key"));
                    behanceSDKProjectFeaturedDTO.setSiteName(jSONObjectOptJSONObject.optString("name"));
                    behanceSDKProjectFeaturedDTO.setSiteUrl(jSONObjectOptJSONObject.optString("url"));
                    behanceSDKProjectFeaturedDTO.setNetworkId(jSONObjectOptJSONObject.optString("network_id"));
                    JSONObject jSONObjectOptJSONObject2 = jSONObjectOptJSONObject.optJSONObject("ribbon");
                    if (jSONObjectOptJSONObject2 != null) {
                        behanceSDKProjectFeaturedDTO.setSiteRibbonImage(jSONObjectOptJSONObject2.optString("image"));
                        behanceSDKProjectFeaturedDTO.setSiteRibbonBiggerImage(jSONObjectOptJSONObject2.optString("image_2x"));
                    }
                    behanceSDKProjectDTO.addFeature(behanceSDKProjectFeaturedDTO);
                }
            }
        }
    }

    private void populateProjectCopyright(JSONObject jSONObject, BehanceSDKProjectDTO behanceSDKProjectDTO) throws JSONException {
        if (jSONObject != null) {
            BehanceSDKProjectCopyrightDTO behanceSDKProjectCopyrightDTO = new BehanceSDKProjectCopyrightDTO();
            behanceSDKProjectCopyrightDTO.setLicenseType(jSONObject.optString(BehanceSDKPublishConstants.KEY_LICENSE));
            behanceSDKProjectCopyrightDTO.setLicenseDescription(jSONObject.optString("description"));
            behanceSDKProjectDTO.setCopyright(behanceSDKProjectCopyrightDTO);
        }
    }

    private BehanceSDKProjectStylesDTO buildProjectStylesDTO(JSONObject jSONObject, int i) {
        if (jSONObject == null) {
            return null;
        }
        BehanceSDKProjectStylesDTO behanceSDKProjectStylesDTO = new BehanceSDKProjectStylesDTO();
        behanceSDKProjectStylesDTO.setBgColor(Color.parseColor("#" + jSONObject.optJSONObject("background").optString("color")));
        JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("background").optJSONObject("image");
        if (jSONObjectOptJSONObject != null) {
            behanceSDKProjectStylesDTO.setBgImageUrl(jSONObjectOptJSONObject.optString("url"));
            behanceSDKProjectStylesDTO.setBgImageRepeat(jSONObjectOptJSONObject.optString("repeat").equalsIgnoreCase("repeat"));
        }
        String str = "";
        JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("text");
        if (jSONObjectOptJSONObject2 != null) {
            float f2 = i >= 5 ? 14.0f : 12.0f;
            float f3 = i >= 5 ? ProjectTextModuleCaptionDefaultFontSizeV5 : ProjectTextModuleCaptionDefaultFontSize;
            str = (((((((("" + buildCSSProperty(".title", jSONObjectOptJSONObject2.optJSONObject("title"), f2, true) + "\r\n") + buildCSSProperty(".sub-title", jSONObjectOptJSONObject2.optJSONObject("subtitle"), f2, true) + "\r\n") + buildCSSProperty("div, p, .main-text", jSONObjectOptJSONObject2.optJSONObject("paragraph"), f2, true) + "\r\n") + buildCSSProperty(".caption", jSONObjectOptJSONObject2.optJSONObject(BehanceSDKPublishConstants.KEY_CAPTION), f3, true) + "\r\n") + buildCSSProperty("a", jSONObjectOptJSONObject2.optJSONObject("link"), f2, false) + "\r\n") + ".underline {\ndisplay: inline;\ntext-decoration: underline;\n}\r\n") + ".italic {\ndisplay: inline;\nfont-weight: italic;\n}\r\n") + ".bold {\ndisplay: inline;\nfont-weight: bold;\n}\r\n") + "body {\nmargin: 0;\n}";
            behanceSDKProjectStylesDTO.setTitleCSS(buildCSSProperty(jSONObjectOptJSONObject2.optJSONObject("title"), f2));
            behanceSDKProjectStylesDTO.setSubTitleCSS(buildCSSProperty(jSONObjectOptJSONObject2.optJSONObject("subtitle"), f2));
            behanceSDKProjectStylesDTO.setMainTextCSS(buildCSSProperty(jSONObjectOptJSONObject2.optJSONObject("paragraph"), f2));
            behanceSDKProjectStylesDTO.setCaptionCSS(buildCSSProperty(jSONObjectOptJSONObject2.optJSONObject(BehanceSDKPublishConstants.KEY_CAPTION), f3));
            behanceSDKProjectStylesDTO.setLinkCSS(buildCSSProperty(jSONObjectOptJSONObject2.optJSONObject("link"), f2));
            behanceSDKProjectStylesDTO.setUnderlineCSS("{\ndisplay: block;\ntext-decoration: underline;\n}");
        }
        behanceSDKProjectStylesDTO.setCustomCSS(str);
        behanceSDKProjectStylesDTO.setDividerCSS(buildDividerCSS(jSONObject.optJSONObject("dividers")));
        JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("spacing");
        behanceSDKProjectStylesDTO.setProjectMarginTop(jSONObjectOptJSONObject3.optJSONObject("project").optInt("top_margin"));
        behanceSDKProjectStylesDTO.setModuleMarginBottom(jSONObjectOptJSONObject3.optJSONObject(BehanceSDKPublishConstants.KEY_MODULES).optInt("bottom_margin"));
        return behanceSDKProjectStylesDTO;
    }

    private String buildCSSProperty(String str, JSONObject jSONObject, float f2, boolean z) {
        if (jSONObject == null) {
            return null;
        }
        String str2 = (((str + " {\n") + "font-family: " + jSONObject.optString("font_family") + ";\n") + "font-weight: " + jSONObject.optString(FontsContractCompat.Columns.WEIGHT) + ";\n") + "color: " + jSONObject.optString("color") + ";\n";
        if (!jSONObject.optString("text_align").equalsIgnoreCase(AdobePSDCompositeConstants.AdobePSDCompositeBoundsLeftKey)) {
            str2 = str2 + "text-align: " + jSONObject.optString("text_align") + ";\n";
        }
        if (!jSONObject.optString("line_height").replace("em", "").equalsIgnoreCase(ProjectTextModuleDefaultLineHeight)) {
            str2 = str2 + "line-height: " + jSONObject.optString("line_height", String.valueOf(ProjectTextModuleDefaultLineHeight)).replace("em", "") + ";\n";
        }
        if (!jSONObject.optString("font_size").equalsIgnoreCase(String.valueOf(f2))) {
            str2 = str2 + "font-size: " + jSONObject.optString("font_size", String.valueOf(f2)) + ";\n";
        }
        return (((str2 + "text-decoration: " + jSONObject.optString("text_decoration") + ";\n") + "font-style:" + jSONObject.optString("font_style") + ";\n") + "display: " + (z ? "block;\n" : jSONObject.optString("display") + ";\n")) + "}";
    }

    private String buildCSSProperty(JSONObject jSONObject, float f2) {
        if (jSONObject == null) {
            return null;
        }
        return (((((((("font-family: " + jSONObject.optString("font_family") + ";\n") + "font-weight: " + jSONObject.optString(FontsContractCompat.Columns.WEIGHT) + ";\n") + "color: " + jSONObject.optString("color") + ";\n") + "text-align: " + jSONObject.optString("text_align") + ";\n") + "line-height: " + jSONObject.optString("line_height", String.valueOf(ProjectTextModuleDefaultLineHeight)).replace("em", "") + ";\n") + "font-size: " + jSONObject.optString("font_size", String.valueOf(f2)) + ";\n") + "text-decoration: " + jSONObject.optString("text_decoration") + ";\n") + "font-style:" + jSONObject.optString("font_style") + ";\n") + "display: block;\n";
    }

    private String buildDividerCSS(JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.optString("display").equalsIgnoreCase("none")) {
            return null;
        }
        return (((((((("p.divider {\nfont-size: " + jSONObject.optString("font_size") + ";\n") + "line-height: " + jSONObject.optString("line_height") + ";\n") + "height: " + jSONObject.optString("height") + ";\n") + "border-color: " + jSONObject.optString("border_color") + ";\n") + "margin: " + jSONObject.optString("margin") + ";\n") + "position: " + jSONObject.optString(ListQuery.ORDERBY_POSITION) + ";\n") + "border-width: " + jSONObject.optString("border_width") + ";\n") + "border-style: " + jSONObject.optString("border_style") + " none none none;\n") + "}";
    }
}
