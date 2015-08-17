package com.jass.preate.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.jass.preate.dao.BoardAttachmentDao;
import com.jass.preate.dao.BoardDao;
import com.jass.preate.dao.CommentDao;
import com.jass.preate.vo.Board;
import com.jass.preate.vo.BoardAttachment;
import com.jass.preate.vo.Comment;

@Controller
@RequestMapping("/board/*")
public class BoardController {

	private BoardDao boardDao;
	private CommentDao commentDao;
	private BoardAttachmentDao boardAttachmentDao;

	@Autowired
	public void setBoardDao(BoardDao boardDao) {
		this.boardDao = boardDao;
	}

	@Autowired
	public void setCommentDao(CommentDao commentDao) {
		this.commentDao = commentDao;
	}

	@Autowired
	public void setBoardAttachmentDao(BoardAttachmentDao boardAttachmentDao) {
		this.boardAttachmentDao = boardAttachmentDao;
	}

	@RequestMapping(value = "designer/designerBoard", method = RequestMethod.GET)
	public String designerBoard(Model model, String page, String category) {

		int pageNum = 1;

		if (page != null) {
			pageNum = Integer.parseInt(page);
		}
		
		List<Board> list = boardDao.getBoards(pageNum, "designer", category);

		model.addAttribute("list", list);
		model.addAttribute("category", category);

		return "board.designer.designerBoard";

	}
	
	@RequestMapping(value = "designer/designerBoard", method = RequestMethod.POST)
	public String designerBoard(Model model, String page, String field,
			String query, String category) {

		int pageNum = 1;

		if (page != null) {
			pageNum = Integer.parseInt(page);
		}

		List<Board> list = boardDao.getBoards(pageNum, "designer", field,
				query, category);
		model.addAttribute("list", list);
		model.addAttribute("category", category);

		return "board.designer.designerBoard";
	}

	@RequestMapping(value = "developer/developerBoard", method = RequestMethod.GET)
	public String developerBoard(Model model, String page, String category) {
		
		int pageNum = 1;

		if (page != null) {
			pageNum = Integer.parseInt(page);
		}
		
		List<Board> list = boardDao.getBoards(pageNum, "developer", category);

		model.addAttribute("list", list);
		model.addAttribute("category", category);

		return "board.developer.developerBoard";

	}

	@RequestMapping(value = "developer/developerBoard", method = RequestMethod.POST)
	public String developerBoard(Model model, String page, String field,
			String query, String category) {

		int pageNum = 1;

		if (page != null) {
			pageNum = Integer.parseInt(page);
		}

		List<Board> list = boardDao.getBoards(pageNum, "developer", field,
				query, category);
		model.addAttribute("list", list);
		model.addAttribute("category", category);

		return "board.developer.developerBoard";
	}

	@RequestMapping(value = "free/freeBoard", method = RequestMethod.GET)
	public String freeBoard(Model model, String page) {

		int pageNum = 1;

		if (page != null) {
			pageNum = Integer.parseInt(page);
		}
		
		List<Board> list = boardDao.getBoards(pageNum, "free");

		model.addAttribute("list", list);

		return "board.free.freeBoard";

	}

	@RequestMapping(value = "free/freeBoard", method = RequestMethod.POST)
	public String freeBoard(Model model, String page, String field, String query) {

		int pageNum = 1;

		if (page != null) {
			pageNum = Integer.parseInt(page);
		}

		List<Board> list = boardDao.getBoards(pageNum, "free", field, query,
				null);
		model.addAttribute("list", list);

		return "board.free.freeBoard";
	}

	/*
	 * @RequestMapping(value="free/freeBoard", method=RequestMethod.GET) public
	 * String freeBoard(Model model) {
	 * 
	 * 
	 * List<Board> list = boardDao.getBoards(1, "free");
	 * 
	 * model.addAttribute("list", list);
	 * 
	 * return "board.free.freeBoard";
	 * 
	 * }
	 * 
	 * @RequestMapping(value = "free/freeBoard", method = RequestMethod.POST)
	 * public String freeBoard(Model model, String field, String query) {
	 * 
	 * List<Board> list = boardDao.getBoards(1, "free", field, query);
	 * model.addAttribute("list", list);
	 * 
	 * return "management.customerService"; }
	 */

	@RequestMapping(value = "designer/designerDetail", method = RequestMethod.GET)
	public String designerDetail(Model model, String c) {

		boardDao.addHit(c);

		Board board = boardDao.getBoard(c);
		model.addAttribute("b", board);

		List<Comment> list = commentDao.getComments(1, c);
		model.addAttribute("list", list);

		List<BoardAttachment> list2 = boardAttachmentDao.getBoardAttachments(c);
		model.addAttribute("list2", list2);

		return "board.designer.designerDetail";

	}

	@RequestMapping(value = "designer/designerDetail", method = RequestMethod.POST)
	public String designerDetail(String c, Comment comment, Model model) {

		comment.setWriter("jungnampyo");
		comment.setBoardCode(c);

		commentDao.addComment(comment);

		Board board = boardDao.getBoard(c);
		model.addAttribute("b", board);

		List<Comment> list = commentDao.getComments(1, c);
		model.addAttribute("list", list);

		List<BoardAttachment> list2 = boardAttachmentDao.getBoardAttachments(c);
		model.addAttribute("list2", list2);

		return "board.designer.designerDetail";

		/* return "redirect:designerDetail?c=" + c; */

	}

	@RequestMapping(value = "developer/developerDetail", method = RequestMethod.GET)
	public String developerDetail(Model model, String c) {

		boardDao.addHit(c);

		Board board = boardDao.getBoard(c);
		model.addAttribute("b", board);

		List<Comment> list = commentDao.getComments(1, c);
		model.addAttribute("list", list);

		List<BoardAttachment> list2 = boardAttachmentDao.getBoardAttachments(c);
		model.addAttribute("list2", list2);

		return "board.developer.developerDetail";

	}

	@RequestMapping(value = "developer/developerDetail", method = RequestMethod.POST)
	public String developerDetail(String c, Comment comment, Model model) {

		comment.setWriter("jungnampyo");
		comment.setBoardCode(c);

		commentDao.addComment(comment);

		Board board = boardDao.getBoard(c);
		model.addAttribute("b", board);

		List<Comment> list = commentDao.getComments(1, c);
		model.addAttribute("list", list);

		List<BoardAttachment> list2 = boardAttachmentDao.getBoardAttachments(c);
		model.addAttribute("list2", list2);

		return "board.developer.developerDetail";

		/* return "redirect:developerDetail?c=" + c; */

	}

	@RequestMapping(value = "free/freeDetail", method = RequestMethod.GET)
	public String freeDetail(Model model, String c) {

		boardDao.addHit(c);

		Board board = boardDao.getBoard(c);
		model.addAttribute("b", board);

		List<Comment> list = commentDao.getComments(1, c);
		model.addAttribute("list", list);

		List<BoardAttachment> list2 = boardAttachmentDao.getBoardAttachments(c);
		model.addAttribute("list2", list2);

		return "board.free.freeDetail";

	}

	@RequestMapping(value = "free/freeDetail", method = RequestMethod.POST)
	public String freeDetail(String c, Comment comment, Model model) {

		comment.setWriter("jungnampyo");
		comment.setBoardCode(c);

		commentDao.addComment(comment);

		Board board = boardDao.getBoard(c);
		model.addAttribute("b", board);

		List<Comment> list = commentDao.getComments(1, c);
		model.addAttribute("list", list);

		List<BoardAttachment> list2 = boardAttachmentDao.getBoardAttachments(c);
		model.addAttribute("list2", list2);

		return "board.free.freeDetail";

		/* return "redirect:freeDetail?c=" + c; */

	}

	@RequestMapping(value = "designer/designerReg", method = RequestMethod.GET)
	public String designerReg() {

		return "board.designer.designerReg";
	}

	@RequestMapping(value = "designer/designerReg", method = RequestMethod.POST)
	public String designerReg(Board board, MultipartFile file,
			HttpServletRequest request) throws IOException, ServletException {

		board.setWriter("jungnampyo");

		board.setClassification("designer");

		boardDao.addBoard(board);

		if (!file.isEmpty()) {

			ServletContext application = request.getServletContext();

			String url = "/resource/upload/board";
			String path = application.getRealPath(url);
			String temp = file.getOriginalFilename();
			String fname = temp.substring(temp.lastIndexOf("\\") + 1);
			String fpath = path + "\\" + fname;

			InputStream ins = file.getInputStream();
			OutputStream outs = new FileOutputStream(fpath);

			byte[] bowl = new byte[1024];
			int len = 0;

			while ((len = ins.read(bowl, 0, 1024)) >= 0) {
				outs.write(bowl, 0, len);
			}

			outs.flush();
			outs.close();
			ins.close();

			BoardAttachment boardAttachment = new BoardAttachment();
			boardAttachment.setName(fname);
			boardAttachment.setBoardCode(boardDao.getLastCode());

			boardAttachmentDao.addBoardAttachment(boardAttachment);

		}

		return "redirect:designerBoard";

	}

	@RequestMapping(value = "developer/developerReg", method = RequestMethod.GET)
	public String developerReg() {

		return "board.developer.developerReg";
	}

	@RequestMapping(value = "developer/developerReg", method = RequestMethod.POST)
	public String developerReg(Board board, MultipartFile file,
			HttpServletRequest request) throws IOException {

		board.setWriter("jungnampyo");

		board.setClassification("developer");

		boardDao.addBoard(board);

		if (!file.isEmpty()) {

			ServletContext application = request.getServletContext();

			String url = "/resource/upload/board";
			String path = application.getRealPath(url);
			String temp = file.getOriginalFilename();
			String fname = temp.substring(temp.lastIndexOf("\\") + 1);
			String fpath = path + "\\" + fname;

			InputStream ins = file.getInputStream();
			OutputStream outs = new FileOutputStream(fpath);

			byte[] bowl = new byte[1024];
			int len = 0;

			while ((len = ins.read(bowl, 0, 1024)) >= 0) {
				outs.write(bowl, 0, len);
			}

			outs.flush();
			outs.close();
			ins.close();

			BoardAttachment boardAttachment = new BoardAttachment();
			boardAttachment.setName(fname);
			boardAttachment.setBoardCode(boardDao.getLastCode());

			boardAttachmentDao.addBoardAttachment(boardAttachment);

		}

		return "redirect:developerBoard";

	}

	@RequestMapping(value = "free/freeReg", method = RequestMethod.GET)
	public String freeReg() {

		return "board.free.freeReg";
	}

	@RequestMapping(value = "free/freeReg", method = RequestMethod.POST)
	public String freeReg(Board board, MultipartFile file,
			HttpServletRequest request) throws IOException {

		board.setWriter("jungnampyo");

		board.setClassification("free");

		boardDao.addBoard(board);

		if (!file.isEmpty()) {

			ServletContext application = request.getServletContext();

			String url = "/resource/upload/board";
			String path = application.getRealPath(url);
			String temp = file.getOriginalFilename();
			String fname = temp.substring(temp.lastIndexOf("\\") + 1);
			String fpath = path + "\\" + fname;

			InputStream ins = file.getInputStream();
			OutputStream outs = new FileOutputStream(fpath);

			byte[] bowl = new byte[1024];
			int len = 0;

			while ((len = ins.read(bowl, 0, 1024)) >= 0) {
				outs.write(bowl, 0, len);
			}

			outs.flush();
			outs.close();
			ins.close();

			BoardAttachment boardAttachment = new BoardAttachment();
			boardAttachment.setName(fname);
			boardAttachment.setBoardCode(boardDao.getLastCode());

			boardAttachmentDao.addBoardAttachment(boardAttachment);

		}

		return "redirect:freeBoard";

	}

	@RequestMapping(value = "designer/designerEdit", method = RequestMethod.GET)
	public String designerEdit(Model model, String c) {

		Board board = boardDao.getBoard(c);
		model.addAttribute("b", board);

		List<BoardAttachment> list = boardAttachmentDao.getBoardAttachments(c);
		model.addAttribute("list", list);

		return "board.designer.designerEdit";
	}

	@RequestMapping(value = "designer/designerEdit", method = RequestMethod.POST)
	public String designerEdit(Board board, String c, MultipartFile file,
			HttpServletRequest request) throws IOException {

		board.setCode(c);
		board.setWriter("jungnampyo");

		boardDao.changeBoard(board);

		if (!file.isEmpty()) {

			ServletContext application = request.getServletContext();

			String url = "/resource/upload/board";
			String path = application.getRealPath(url);
			String temp = file.getOriginalFilename();
			String fname = temp.substring(temp.lastIndexOf("\\") + 1);
			String fpath = path + "\\" + fname;

			InputStream ins = file.getInputStream();
			OutputStream outs = new FileOutputStream(fpath);

			byte[] bowl = new byte[1024];
			int len = 0;

			while ((len = ins.read(bowl, 0, 1024)) >= 0) {
				outs.write(bowl, 0, len);
			}

			outs.flush();
			outs.close();
			ins.close();

			BoardAttachment boardAttachment = new BoardAttachment();
			boardAttachment.setName(fname);
			boardAttachment.setBoardCode(boardDao.getLastCode());

			boardAttachmentDao.addBoardAttachment(boardAttachment);

		}

		return "redirect:designerBoard";

	}

	@RequestMapping(value = "developer/developerEdit", method = RequestMethod.GET)
	public String developerEdit(Model model, String c) {

		Board board = boardDao.getBoard(c);
		model.addAttribute("b", board);

		List<BoardAttachment> list = boardAttachmentDao.getBoardAttachments(c);
		model.addAttribute("list", list);

		return "board.developer.developerEdit";
	}

	@RequestMapping(value = "developer/developerEdit", method = RequestMethod.POST)
	public String developerEdit(Board board, String c, MultipartFile file,
			HttpServletRequest request) throws IOException {

		board.setCode(c);
		board.setWriter("jungnampyo");

		boardDao.changeBoard(board);

		if (!file.isEmpty()) {

			ServletContext application = request.getServletContext();

			String url = "/resource/upload/board";
			String path = application.getRealPath(url);
			String temp = file.getOriginalFilename();
			String fname = temp.substring(temp.lastIndexOf("\\") + 1);
			String fpath = path + "\\" + fname;

			InputStream ins = file.getInputStream();
			OutputStream outs = new FileOutputStream(fpath);

			byte[] bowl = new byte[1024];
			int len = 0;

			while ((len = ins.read(bowl, 0, 1024)) >= 0) {
				outs.write(bowl, 0, len);
			}

			outs.flush();
			outs.close();
			ins.close();

			BoardAttachment boardAttachment = new BoardAttachment();
			boardAttachment.setName(fname);
			boardAttachment.setBoardCode(boardDao.getLastCode());

			boardAttachmentDao.addBoardAttachment(boardAttachment);

		}

		return "redirect:developerBoard";

	}

	@RequestMapping(value = "free/freeEdit", method = RequestMethod.GET)
	public String freeEdit(Model model, String c) {

		Board board = boardDao.getBoard(c);
		model.addAttribute("b", board);

		List<BoardAttachment> list = boardAttachmentDao.getBoardAttachments(c);
		model.addAttribute("list", list);

		return "board.free.freeEdit";
	}

	@RequestMapping(value = "free/freeEdit", method = RequestMethod.POST)
	public String freeEdit(Board board, String c, MultipartFile file,
			HttpServletRequest request) throws IOException {

		board.setCode(c);
		board.setWriter("jungnampyo");

		boardDao.changeBoard(board);

		if (!file.isEmpty()) {

			ServletContext application = request.getServletContext();

			String url = "/resource/upload/board";
			String path = application.getRealPath(url);
			String temp = file.getOriginalFilename();
			String fname = temp.substring(temp.lastIndexOf("\\") + 1);
			String fpath = path + "\\" + fname;

			InputStream ins = file.getInputStream();
			OutputStream outs = new FileOutputStream(fpath);

			byte[] bowl = new byte[1024];
			int len = 0;

			while ((len = ins.read(bowl, 0, 1024)) >= 0) {
				outs.write(bowl, 0, len);
			}

			outs.flush();
			outs.close();
			ins.close();

			BoardAttachment boardAttachment = new BoardAttachment();
			boardAttachment.setName(fname);
			boardAttachment.setBoardCode(boardDao.getLastCode());

			boardAttachmentDao.addBoardAttachment(boardAttachment);

		}

		return "redirect:freeBoard";

	}

	@RequestMapping("designer/designerRemove")
	public String designerRemove(String c) {

		boardAttachmentDao.removeBoardAttachments(c);
		commentDao.removeComments(c);
		boardDao.removeBoard(c);

		return "redirect:designerBoard";
	}

	@RequestMapping("developer/developerRemove")
	public String developerRemove(String c) {

		boardAttachmentDao.removeBoardAttachments(c);
		commentDao.removeComments(c);
		boardDao.removeBoard(c);

		return "redirect:developerBoard";
	}

	@RequestMapping("free/freeRemove")
	public String freeRemove(String c) {

		boardAttachmentDao.removeBoardAttachments(c);
		commentDao.removeComments(c);
		boardDao.removeBoard(c);

		return "redirect:freeBoard";
	}

	@RequestMapping("designer/designerRecommend")
	public String designerRecommend(String c) {

		return "redirect:designerDetail?c=" + c;
	}

}
