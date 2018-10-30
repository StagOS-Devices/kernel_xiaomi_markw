ifneq ($(filter y, $(CONFIG_FB_MSM_MDSS_COMMON) $(CONFIG_MSM_DBA)),)
obj-y += ../../msm/
else
obj-y := msm_fb.o

# MDP DMA/PPP engine
#
obj-y += mdp.o mdp_scale_tables.o mdp_ppp.o

# MDDI interface
#
obj-y += mddi.o

# MDDI client/panel drivers
#
obj-y += mddi_client_dummy.o
obj-y += mddi_client_toshiba.o
obj-y += mddi_client_nt35399.o
endif

mdss-dsi-objs := mdss_dsi.o mdss_dsi_host.o mdss_dsi_cmd.o mdss_dsi_status.o
mdss-dsi-objs += mdss_dsi_panel.o
mdss-dsi-objs += msm_mdss_io_8974.o
mdss-dsi-objs += mdss_dsi_phy.o
mdss-dsi-objs += mdss_dsi_phy_v3.o
mdss-dsi-objs += mdss_dsi_clk.o
obj-$(CONFIG_FB_MSM_MDSS) += mdss-dsi.o
obj-$(CONFIG_FB_MSM_MDSS) += mdss_panel.o
obj-$(CONFIG_FB_MSM_MDSS) += mdss_hdmi_util.o
obj-$(CONFIG_FB_MSM_MDSS) += mdss_hdmi_edid.o
obj-$(CONFIG_FB_MSM_MDSS) += mdss_cec_core.o
obj-$(CONFIG_FB_MSM_MDSS) += mdss_dba_utils.o
obj-$(CONFIG_FB_MSM_MDSS) += mdss_hdcp_1x.o
obj-$(CONFIG_FB_MSM_MDSS_DP_PANEL) += mdss_dp.o mdss_dp_util.o
obj-$(CONFIG_FB_MSM_MDSS_DP_PANEL) += mdss_dp_aux.o
obj-$(CONFIG_FB_MSM_MDSS_DP_PANEL) += mdss_dp_hdcp2p2.o

obj-$(CONFIG_FB_MSM_MDSS) += mdss_io_util.o
obj-$(CONFIG_FB_MSM_MDSS_HDMI_PANEL) += mdss_hdmi_tx.o
obj-$(CONFIG_FB_MSM_MDSS_HDMI_PANEL) += mdss_hdmi_panel.o
obj-$(CONFIG_FB_MSM_MDSS_HDMI_PANEL) += mdss_hdmi_hdcp2p2.o
obj-$(CONFIG_FB_MSM_MDSS_HDMI_PANEL) += mdss_hdmi_cec.o
obj-$(CONFIG_FB_MSM_MDSS_HDMI_PANEL) += mdss_hdmi_audio.o
obj-$(CONFIG_FB_MSM_MDSS_HDMI_MHL_SII8334) += mhl_sii8334.o mhl_msc.o

obj-$(CONFIG_FB_MSM_MDSS_WRITEBACK) += mdss_wb.o

mdss-qpic-objs := mdss_qpic.o mdss_fb.o mdss_qpic_panel.o
obj-$(CONFIG_FB_MSM_QPIC) += mdss-qpic.o
obj-$(CONFIG_FB_MSM_QPIC_ILI_QVGA_PANEL) += qpic_panel_ili_qvga.o

obj-$(CONFIG_FB_MSM_MDSS) += mdss_fb.o mdss_util.o
obj-$(CONFIG_COMPAT) += mdss_compat_utils.o

obj-$(CONFIG_FB_MSM_MDSS_KCAL_CTRL) += mdss_mdp_kcal_ctrl.o
