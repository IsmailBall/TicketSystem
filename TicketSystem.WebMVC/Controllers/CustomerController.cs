﻿using AutoMapper;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using TicketSystem.Business.Abstract;
using TicketSystem.Entities.Dtos;
using TicketSystem.Entities.Dtos.SessionDtos;
using TicketSystem.Entities.SystemEntities;
using TicketSystem.WebMVC.Utilities.Extentions;

namespace TicketSystem.WebMVC.Controllers
{
    
    public class CustomerController : Controller
    {
        ICustomerService _customerService;
        ISessionService _sessionService;
        IMapper _mapper;
        ITicketService _ticketService;
        ISeatService _seatService;
        IPaymentService _paymentService;

        public CustomerController(ICustomerService customerService, IMapper mapper, ISessionService sessionService, IPaymentService paymentService, ITicketService ticketService, ISeatService seatService)
        {
            _customerService = customerService;
            _mapper = mapper;
            _sessionService = sessionService;
            _ticketService = ticketService;
            _seatService = seatService;
            _paymentService = paymentService;
        }

        public async Task<IActionResult> GetProfile()
        {
            int customerId = FindCustomerId();
            var customerResult = await _customerService.GetByIdAsync(customerId);
            if (customerResult.Success)
            {
                var customerListingDto = _mapper.Map<CustomerListingDto>(customerResult.Data);
                return View(customerListingDto);
            }
            return RedirectToAction("GetAll", "Movie");
        }
        public async Task<IActionResult> Update()
        {

            int customerId = FindCustomerId();
            var customerResult = await _customerService.GetByIdAsync(customerId);

            if (customerResult.Success)
            {
                var customerUpdateDto = _mapper.Map<CustomerUpdateDto>(customerResult.Data);
                return View(customerUpdateDto);
            }

            return RedirectToAction("GetAll", "Movie");
        }
        [HttpPost]
        public async Task<IActionResult> Update(CustomerUpdateDto customerUpdateDto)
        {
            var customerId = FindCustomerId();
            return await this.UpdateUserAsync(_customerService, _mapper, customerUpdateDto, customerId);
        }
        public async Task<IActionResult> BuyTicket(int id)
        {
            var sessions = await _sessionService.GetAllSessionsOfMovieAsync(id);

            if (sessions.Success)
            {
                ViewBag.Sessions = new SelectList(sessions.Data, "SessionId", "SessionTime");
                ViewBag.Seats = new SelectList(new int[] { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 });
                return View(new BuyTicketDto());
            }
            return RedirectToAction("GetAll", "Movie");
        }
        [HttpPost]
        public async Task<IActionResult> BuyTicket(BuyTicketDto buyTicketDto)
        {
            int customerId = FindCustomerId();
            return await this.BuyTicket(buyTicketDto, customerId, _ticketService, _seatService, _sessionService);
        }

        private int FindCustomerId() => Convert.ToInt32(User.FindFirst("Id")!.Value);

        [HttpGet]
        public JsonResult GetSessions(int id)
        {
            var session = _sessionService.GetSessionDetailAsync(id);

            return Json(session.Data);
        }
        [HttpGet]
        public async Task<IActionResult> GetTicketOfSession(int id)
        {
            
            var session = _sessionService.GetSessionAsync(id);
            var seats = await _seatService.GetBySceneIdAsync(session.Data.SceneId);

            if (session.Success)
            {
                ViewBag.Session = session.Data;
            }
            if (seats.Success)
            {
                ViewBag.Seats = new SelectList(seats.Data, "SeatId", "SeatNumber");
            }
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> NewPayment(Payment payment)
        {
            payment.CustomerId = 2;
            payment.EInvoice = "1";

            

            var result = await _paymentService.CreateAsync(payment);
            if (result.Success)
            {
                Ticket t = new Ticket();
                t.SessionId = 1;
                t.CustomerId = payment.CustomerId;
                t.Price = 100;

                var ticket = await _ticketService.CreateAsync(t);
                if (ticket.Success)
                {
                    return RedirectToAction("GetAll", "Movie");
                }
            }
            
            
            return null;
        }
    }
}
